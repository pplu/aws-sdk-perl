
use AWS::API;


package Aws::CognitoIdentity {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cognito-identity');
  has version => (is => 'ro', isa => 'Str', default => '2014-06-30');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'AWSCognitoIdentityService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub CreateIdentityPool {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::CreateIdentityPool', @_);
  }
  sub DeleteIdentityPool {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::DeleteIdentityPool', @_);
  }
  sub DescribeIdentityPool {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::DescribeIdentityPool', @_);
  }
  sub GetId {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::GetId', @_);
  }
  sub GetOpenIdToken {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::GetOpenIdToken', @_);
  }
  sub GetOpenIdTokenForDeveloperIdentity {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentity', @_);
  }
  sub ListIdentities {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::ListIdentities', @_);
  }
  sub ListIdentityPools {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::ListIdentityPools', @_);
  }
  sub LookupDeveloperIdentity {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::LookupDeveloperIdentity', @_);
  }
  sub MergeDeveloperIdentities {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::MergeDeveloperIdentities', @_);
  }
  sub UnlinkDeveloperIdentity {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::UnlinkDeveloperIdentity', @_);
  }
  sub UnlinkIdentity {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::UnlinkIdentity', @_);
  }
  sub UpdateIdentityPool {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::UpdateIdentityPool', @_);
  }
}
1;
