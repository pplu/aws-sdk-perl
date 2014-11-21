
use AWS::API;


package Aws::KMS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'kms');
  has version => (is => 'ro', isa => 'Str', default => '2014-11-01');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'TrentService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub CreateAlias {
    my $self = shift;
    return $self->do_call('Aws::KMS::CreateAlias', @_);
  }
  sub CreateGrant {
    my $self = shift;
    return $self->do_call('Aws::KMS::CreateGrant', @_);
  }
  sub CreateKey {
    my $self = shift;
    return $self->do_call('Aws::KMS::CreateKey', @_);
  }
  sub Decrypt {
    my $self = shift;
    return $self->do_call('Aws::KMS::Decrypt', @_);
  }
  sub DeleteAlias {
    my $self = shift;
    return $self->do_call('Aws::KMS::DeleteAlias', @_);
  }
  sub DescribeKey {
    my $self = shift;
    return $self->do_call('Aws::KMS::DescribeKey', @_);
  }
  sub DisableKey {
    my $self = shift;
    return $self->do_call('Aws::KMS::DisableKey', @_);
  }
  sub DisableKeyRotation {
    my $self = shift;
    return $self->do_call('Aws::KMS::DisableKeyRotation', @_);
  }
  sub EnableKey {
    my $self = shift;
    return $self->do_call('Aws::KMS::EnableKey', @_);
  }
  sub EnableKeyRotation {
    my $self = shift;
    return $self->do_call('Aws::KMS::EnableKeyRotation', @_);
  }
  sub Encrypt {
    my $self = shift;
    return $self->do_call('Aws::KMS::Encrypt', @_);
  }
  sub GenerateDataKey {
    my $self = shift;
    return $self->do_call('Aws::KMS::GenerateDataKey', @_);
  }
  sub GenerateDataKeyWithoutPlaintext {
    my $self = shift;
    return $self->do_call('Aws::KMS::GenerateDataKeyWithoutPlaintext', @_);
  }
  sub GenerateRandom {
    my $self = shift;
    return $self->do_call('Aws::KMS::GenerateRandom', @_);
  }
  sub GetKeyPolicy {
    my $self = shift;
    return $self->do_call('Aws::KMS::GetKeyPolicy', @_);
  }
  sub GetKeyRotationStatus {
    my $self = shift;
    return $self->do_call('Aws::KMS::GetKeyRotationStatus', @_);
  }
  sub ListAliases {
    my $self = shift;
    return $self->do_call('Aws::KMS::ListAliases', @_);
  }
  sub ListGrants {
    my $self = shift;
    return $self->do_call('Aws::KMS::ListGrants', @_);
  }
  sub ListKeyPolicies {
    my $self = shift;
    return $self->do_call('Aws::KMS::ListKeyPolicies', @_);
  }
  sub ListKeys {
    my $self = shift;
    return $self->do_call('Aws::KMS::ListKeys', @_);
  }
  sub PutKeyPolicy {
    my $self = shift;
    return $self->do_call('Aws::KMS::PutKeyPolicy', @_);
  }
  sub ReEncrypt {
    my $self = shift;
    return $self->do_call('Aws::KMS::ReEncrypt', @_);
  }
  sub RetireGrant {
    my $self = shift;
    return $self->do_call('Aws::KMS::RetireGrant', @_);
  }
  sub RevokeGrant {
    my $self = shift;
    return $self->do_call('Aws::KMS::RevokeGrant', @_);
  }
  sub UpdateKeyDescription {
    my $self = shift;
    return $self->do_call('Aws::KMS::UpdateKeyDescription', @_);
  }
}
1;
