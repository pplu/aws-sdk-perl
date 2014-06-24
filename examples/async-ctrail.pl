#!/usr/bin/env perl

use strict;
use warnings;

use Aws;

use lib 'auto-lib', 'lib';

package Net::AWS::MojoAsyncCaller;

use Moose::Role;

with 'Net::AWS::Caller';

use Data::Dumper;
use Mojo::IOLoop;
use Mojo::UserAgent;

# Overwrite useragent with mojo...
has 'ua' => (is => 'ro', isa => 'Mojo::UserAgent', default => sub {
  Mojo::UserAgent->new
});

has 'delay' => (is => 'rw', default => sub {
  Mojo::IOLoop->delay(sub { });
});

sub do_call {
  my ($self, $call_class, @params) = @_;
  my $call = $self->new_with_coercions($call_class, @params);

  my $request = Net::AWS::APIRequest->new();
  $self->_api_caller($call_class, $call, $request);
  $self->sign($request);
  my $result = $self->send($request, $call_class);

#    if ($call_class->_returns){
#      if ($call_class->_result_key){
#        $result = $result->{ $call_class->_result_key };
#      }
#
#      my $o_result = $call_class->_returns->from_result($result);
#      return $o_result;
#    }
}

sub send {
  my ($self, $requestObj, $call_class) = @_;
  my $headers = {};
  $requestObj->headers->scan(sub { $headers->{ $_[0] } = $_[1] });

  my $method = lc($requestObj->method);
  my $end = $self->delay->begin(0);

  my $result_class = $call_class->_returns;
  my $result_key = $call_class->_result_key;

  $self->ua->$method(
    $requestObj->url =>  
    $headers =>  
    ($requestObj->content)?$requestObj->content:() =>
    sub {
      my ( $ua, $response ) = @_;
      if ( $response->success ) { 
        my $result = $self->_process_response( $response->res->body );

        if ($result_class){
          if ($result_key){
            $result = $result->{ $result_key };
          }

          my $o_result = $call_class->_returns->from_result($result);
          $end->( $o_result );
        } else {
          $end->( 1 );
        }
      } else {
        #TODO: retry or croak based on error codes
        $end->( $response->res->error );
      }   
    }   
  );  
}

1;

package main;

use Data::Dumper;
use Data::Printer;

my $result;


my $aws = Aws->new(
  config => AWS::SDK::Config->new(caller => 'Net::AWS::MojoAsyncCaller')
);

my $delay = Mojo::IOLoop->delay(sub {
  my ($delay, @responses) = @_;
  Dumper($_) for @responses;
});

foreach my $region (
     "us-east-1", "ap-northeast-1", "sa-east-1", 
     "ap-southeast-1", "ap-southeast-2", "us-west-2", 
     "us-west-1", "eu-west-1", 'invented-region') {
  my $ctrail = $aws->service('CloudTrail')->new(
    region => $region,
    delay => $delay,
  );

  print "Doing a call for $region\n";

  my $list = $ctrail->DescribeTrails;
}

my @x = $delay->wait;

use Data::Dumper;
print Dumper(@x);
