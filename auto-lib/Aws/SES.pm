
use AWS::API;


package Aws::SES::DeleteIdentityResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::SES::GetIdentityDkimAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DkimAttributes => (is => 'ro', isa => 'Aws::SES::DkimAttributes', required => 1);

}
package Aws::SES::GetIdentityNotificationAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NotificationAttributes => (is => 'ro', isa => 'Aws::SES::NotificationAttributes', required => 1);

}
package Aws::SES::GetIdentityVerificationAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VerificationAttributes => (is => 'ro', isa => 'Aws::SES::VerificationAttributes', required => 1);

}
package Aws::SES::GetSendQuotaResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Max24HourSend => (is => 'ro', isa => 'Num');
  has MaxSendRate => (is => 'ro', isa => 'Num');
  has SentLast24Hours => (is => 'ro', isa => 'Num');

}
package Aws::SES::GetSendStatisticsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SendDataPoints => (is => 'ro', isa => 'ArrayRef[Aws::SES::SendDataPoint]');

}
package Aws::SES::ListIdentitiesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::SES::ListVerifiedEmailAddressesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VerifiedEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::SES::SendEmailResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::SES::SendRawEmailResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::SES::SetIdentityDkimEnabledResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::SES::SetIdentityFeedbackForwardingEnabledResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::SES::SetIdentityNotificationTopicResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::SES::VerifyDomainDkimResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DkimTokens => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
package Aws::SES::VerifyDomainIdentityResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has VerificationToken => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::SES::VerifyEmailIdentityResult {
  use Moose;
  with 'AWS::API::ResultParser';

}

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
