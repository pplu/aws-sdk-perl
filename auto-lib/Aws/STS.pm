
use AWS::API;


package Aws::STS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'sts');
  has version => (is => 'ro', isa => 'Str', default => '2011-06-15');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AssumeRole {
    my $self = shift;
    return $self->do_call('Aws::STS::AssumeRole', @_);
  }
  sub AssumeRoleWithSAML {
    my $self = shift;
    return $self->do_call('Aws::STS::AssumeRoleWithSAML', @_);
  }
  sub AssumeRoleWithWebIdentity {
    my $self = shift;
    return $self->do_call('Aws::STS::AssumeRoleWithWebIdentity', @_);
  }
  sub DecodeAuthorizationMessage {
    my $self = shift;
    return $self->do_call('Aws::STS::DecodeAuthorizationMessage', @_);
  }
  sub GetFederationToken {
    my $self = shift;
    return $self->do_call('Aws::STS::GetFederationToken', @_);
  }
  sub GetSessionToken {
    my $self = shift;
    return $self->do_call('Aws::STS::GetSessionToken', @_);
  }
}
1;