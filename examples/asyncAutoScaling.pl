#!/usr/bin/env perl

use strict;
use warnings;

use Aws;

use lib 'auto-lib', 'lib';

package Net::AWS::MojoCaller;

use Moose::Role;

with 'Net::AWS::Caller';

use Data::Dumper;
use Mojo::IOLoop;
use Mojo::UserAgent;

sub send {
  my ($netAwsCaller, $requestObj) = @_;
        my $headers = {};
        $requestObj->headers->scan(sub { $headers->{ $_[0] } = $_[1] });

        print "Requesting AWS API Asynchronously ". $requestObj->url ."...\n";

        $netAwsCaller->ua ( Mojo::UserAgent->new );
        my $method = lc($requestObj->method);

        my $awsRespObj;

        # Sequentialize multiple events
        my $delay = Mojo::IOLoop->delay(sub {
                my ($delay) = @_; 
            }); 
        my $end = $delay->begin(0);
        $netAwsCaller->ua->$method(
            $requestObj->url =>  
            $headers =>  
            ($requestObj->content)?$requestObj->content:() =>
            sub {
                my ( $ua, $response ) = @_; 
                if ( $response->success ) { 
                    print STDERR "AWS API Response ".$response->res->body."\n";
                    $awsRespObj = $netAwsCaller->_process_response( $response->res->body );
                } else {
                    #TODO: retry or croak based on error codes
                    print STDERR "AWS POST Request failed: ".$response->res->code. " ". $response->res->message. " ". $response->res->body. "\n";
                }   
                $end->( );
            }   
        );  
        print STDERR "Starting to wait ...\n";
        $delay->wait;

        print STDERR "Reaching end of request\n";
        return $awsRespObj;

};


1;

package main;

use Data::Dumper;
my $aws = Aws->new(config => AWS::SDK::Config->new(caller => 'Net::AWS::MojoCaller') );

my $as = $aws->service('AutoScaling')->new( 
    region => 'us-west-1',
);

print STDERR Dumper $as->DescribeAutoScalingGroups;
