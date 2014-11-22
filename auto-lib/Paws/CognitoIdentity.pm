
use Paws::API;


package Paws::CognitoIdentity {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cognito-identity');
  has version => (is => 'ro', isa => 'Str', default => '2014-06-30');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'AWSCognitoIdentityService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub CreateIdentityPool {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::CreateIdentityPool', @_);
  }
  sub DeleteIdentityPool {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::DeleteIdentityPool', @_);
  }
  sub DescribeIdentityPool {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::DescribeIdentityPool', @_);
  }
  sub GetId {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::GetId', @_);
  }
  sub GetOpenIdToken {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::GetOpenIdToken', @_);
  }
  sub GetOpenIdTokenForDeveloperIdentity {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentity', @_);
  }
  sub ListIdentities {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::ListIdentities', @_);
  }
  sub ListIdentityPools {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::ListIdentityPools', @_);
  }
  sub LookupDeveloperIdentity {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::LookupDeveloperIdentity', @_);
  }
  sub MergeDeveloperIdentities {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::MergeDeveloperIdentities', @_);
  }
  sub UnlinkDeveloperIdentity {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::UnlinkDeveloperIdentity', @_);
  }
  sub UnlinkIdentity {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::UnlinkIdentity', @_);
  }
  sub UpdateIdentityPool {
    my $self = shift;
    return $self->do_call('Paws::CognitoIdentity::UpdateIdentityPool', @_);
  }
}
1;
