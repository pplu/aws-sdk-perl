
use Paws::API;


package Paws::SES {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'email');
  has version => (is => 'ro', isa => 'Str', default => '2010-12-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub DeleteIdentity {
    my $self = shift;
    return $self->do_call('Paws::SES::DeleteIdentity', @_);
  }
  sub DeleteVerifiedEmailAddress {
    my $self = shift;
    return $self->do_call('Paws::SES::DeleteVerifiedEmailAddress', @_);
  }
  sub GetIdentityDkimAttributes {
    my $self = shift;
    return $self->do_call('Paws::SES::GetIdentityDkimAttributes', @_);
  }
  sub GetIdentityNotificationAttributes {
    my $self = shift;
    return $self->do_call('Paws::SES::GetIdentityNotificationAttributes', @_);
  }
  sub GetIdentityVerificationAttributes {
    my $self = shift;
    return $self->do_call('Paws::SES::GetIdentityVerificationAttributes', @_);
  }
  sub GetSendQuota {
    my $self = shift;
    return $self->do_call('Paws::SES::GetSendQuota', @_);
  }
  sub GetSendStatistics {
    my $self = shift;
    return $self->do_call('Paws::SES::GetSendStatistics', @_);
  }
  sub ListIdentities {
    my $self = shift;
    return $self->do_call('Paws::SES::ListIdentities', @_);
  }
  sub ListVerifiedEmailAddresses {
    my $self = shift;
    return $self->do_call('Paws::SES::ListVerifiedEmailAddresses', @_);
  }
  sub SendEmail {
    my $self = shift;
    return $self->do_call('Paws::SES::SendEmail', @_);
  }
  sub SendRawEmail {
    my $self = shift;
    return $self->do_call('Paws::SES::SendRawEmail', @_);
  }
  sub SetIdentityDkimEnabled {
    my $self = shift;
    return $self->do_call('Paws::SES::SetIdentityDkimEnabled', @_);
  }
  sub SetIdentityFeedbackForwardingEnabled {
    my $self = shift;
    return $self->do_call('Paws::SES::SetIdentityFeedbackForwardingEnabled', @_);
  }
  sub SetIdentityNotificationTopic {
    my $self = shift;
    return $self->do_call('Paws::SES::SetIdentityNotificationTopic', @_);
  }
  sub VerifyDomainDkim {
    my $self = shift;
    return $self->do_call('Paws::SES::VerifyDomainDkim', @_);
  }
  sub VerifyDomainIdentity {
    my $self = shift;
    return $self->do_call('Paws::SES::VerifyDomainIdentity', @_);
  }
  sub VerifyEmailAddress {
    my $self = shift;
    return $self->do_call('Paws::SES::VerifyEmailAddress', @_);
  }
  sub VerifyEmailIdentity {
    my $self = shift;
    return $self->do_call('Paws::SES::VerifyEmailIdentity', @_);
  }
}
1;