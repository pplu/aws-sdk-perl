
use AWS::API;


package Aws::SES {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'email');
  has version => (is => 'ro', isa => 'Str', default => '2010-12-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub DeleteIdentity {
    my $self = shift;
    return $self->do_call('Aws::SES::DeleteIdentity', @_);
  }
  sub DeleteVerifiedEmailAddress {
    my $self = shift;
    return $self->do_call('Aws::SES::DeleteVerifiedEmailAddress', @_);
  }
  sub GetIdentityDkimAttributes {
    my $self = shift;
    return $self->do_call('Aws::SES::GetIdentityDkimAttributes', @_);
  }
  sub GetIdentityNotificationAttributes {
    my $self = shift;
    return $self->do_call('Aws::SES::GetIdentityNotificationAttributes', @_);
  }
  sub GetIdentityVerificationAttributes {
    my $self = shift;
    return $self->do_call('Aws::SES::GetIdentityVerificationAttributes', @_);
  }
  sub GetSendQuota {
    my $self = shift;
    return $self->do_call('Aws::SES::GetSendQuota', @_);
  }
  sub GetSendStatistics {
    my $self = shift;
    return $self->do_call('Aws::SES::GetSendStatistics', @_);
  }
  sub ListIdentities {
    my $self = shift;
    return $self->do_call('Aws::SES::ListIdentities', @_);
  }
  sub ListVerifiedEmailAddresses {
    my $self = shift;
    return $self->do_call('Aws::SES::ListVerifiedEmailAddresses', @_);
  }
  sub SendEmail {
    my $self = shift;
    return $self->do_call('Aws::SES::SendEmail', @_);
  }
  sub SendRawEmail {
    my $self = shift;
    return $self->do_call('Aws::SES::SendRawEmail', @_);
  }
  sub SetIdentityDkimEnabled {
    my $self = shift;
    return $self->do_call('Aws::SES::SetIdentityDkimEnabled', @_);
  }
  sub SetIdentityFeedbackForwardingEnabled {
    my $self = shift;
    return $self->do_call('Aws::SES::SetIdentityFeedbackForwardingEnabled', @_);
  }
  sub SetIdentityNotificationTopic {
    my $self = shift;
    return $self->do_call('Aws::SES::SetIdentityNotificationTopic', @_);
  }
  sub VerifyDomainDkim {
    my $self = shift;
    return $self->do_call('Aws::SES::VerifyDomainDkim', @_);
  }
  sub VerifyDomainIdentity {
    my $self = shift;
    return $self->do_call('Aws::SES::VerifyDomainIdentity', @_);
  }
  sub VerifyEmailAddress {
    my $self = shift;
    return $self->do_call('Aws::SES::VerifyEmailAddress', @_);
  }
  sub VerifyEmailIdentity {
    my $self = shift;
    return $self->do_call('Aws::SES::VerifyEmailIdentity', @_);
  }
}
1;