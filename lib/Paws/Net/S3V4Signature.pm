package Paws::Net::S3V4Signature;
  # This is just a copy of the V4Signature code, as for now, I don't know the
  # differences between S3 and S3V4 signatures
  use Moose::Role;
  use Net::Amazon::Signature::V4;
  #requires 'region';
  requires 'service';
  use utf8;
  use POSIX qw(strftime);
use Data::Dumper;
  sub BUILD {
    my $self = shift;

    # These calls are here so that when you construct
    # the object the endpoint information and the _region_for_signature
    # are calculated during construction. This is to avoid the fact that 
    # these attributes are lazy (because they depend on other attributes) 
    # and they don't get used until the first method is called, so if
    # they are incorrect, they don't throw until the first method is called.
    # It's much better to have them throw when $paws->service('...') is called
    # as this is the point where the user had specified "incorrect" information,
    # instead of the problem happening in the first method call.
	# Update 12/27/2019 JPS
	# Seems that the API calls S3Control, need to have the account_id in them
	# I added that in here;  Will 
	$self->endpoint;
    $self->_region_for_signature;
  }

  sub sign {
    my ($self, $request,$account_id) = @_;

    $request->header( Date => $request->header('X-Amz-Date') // strftime( '%Y%m%dT%H%M%SZ', gmtime ) );
	#$request->header( 'X-Amz-Date' => strftime( '%Y%m%dT%H%M%SZ', gmtime ) );
	#
#	 $request->header( 'content-type' => 'application/xml');
#$request->header( 'X-Amz-Date' =>"20191225T194607Z");
    my $url = $request->url();
    $url =~ s/s3-control/$account_id\.s3-control/g;
    $request->url($url); 
	$request->header(
        'host' => $self->endpoint->default_port == $self->endpoint->port
        ? $account_id.".".$self->endpoint->host
        : $account_id.".".$self->endpoint->host_port);
    
	if ($self->session_token) {
      $request->header( 'X-Amz-Security-Token' => $self->session_token );
    }
	

    my $name = $self->can('signing_name') ? $self->signing_name : $self->service;
    my $sig = Net::Amazon::Signature::V4->new( $self->access_key, $self->secret_key, $self->_region_for_signature, $name );
    $sig->sign( $request );
}
1;
