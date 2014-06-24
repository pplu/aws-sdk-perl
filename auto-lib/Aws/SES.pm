
use AWS::API;


package Aws::SES::Body {
  use Moose;
  with ('AWS::API::ResultParser');
  has Html => (is => 'ro', isa => 'Aws::SES::Content');
  has Text => (is => 'ro', isa => 'Aws::SES::Content');
}

package Aws::SES::Content {
  use Moose;
  with ('AWS::API::ResultParser');
  has Charset => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SES::Destination {
  use Moose;
  with ('AWS::API::ResultParser');
  has BccAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has CcAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has ToAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::SES::DkimAttributes {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::SES::Message {
  use Moose;
  with ('AWS::API::ResultParser');
  has Body => (is => 'ro', isa => 'Aws::SES::Body', required => 1);
  has Subject => (is => 'ro', isa => 'Aws::SES::Content', required => 1);
}

package Aws::SES::NotificationAttributes {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::SES::RawMessage {
  use Moose;
  with ('AWS::API::ResultParser');
  has Data => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SES::SendDataPoint {
  use Moose;
  with ('AWS::API::ResultParser');
  has Bounces => (is => 'ro', isa => 'Num');
  has Complaints => (is => 'ro', isa => 'Num');
  has DeliveryAttempts => (is => 'ro', isa => 'Num');
  has Rejects => (is => 'ro', isa => 'Num');
  has Timestamp => (is => 'ro', isa => 'Str');
}

package Aws::SES::VerificationAttributes {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}



package Aws::SES::DeleteIdentity {
  use Moose;
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::DeleteIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIdentityResult');
}
package Aws::SES::DeleteVerifiedEmailAddress {
  use Moose;
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVerifiedEmailAddress');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SES::GetIdentityDkimAttributes {
  use Moose;
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::GetIdentityDkimAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributesResult');
}
package Aws::SES::GetIdentityNotificationAttributes {
  use Moose;
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityNotificationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::GetIdentityNotificationAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityNotificationAttributesResult');
}
package Aws::SES::GetIdentityVerificationAttributes {
  use Moose;
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::GetIdentityVerificationAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributesResult');
}
package Aws::SES::GetSendQuota {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSendQuota');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::GetSendQuotaResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSendQuotaResult');
}
package Aws::SES::GetSendStatistics {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSendStatistics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::GetSendStatisticsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSendStatisticsResult');
}
package Aws::SES::ListIdentities {
  use Moose;
  has IdentityType => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::ListIdentitiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListIdentitiesResult');
}
package Aws::SES::ListVerifiedEmailAddresses {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::ListVerifiedEmailAddressesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddressesResult');
}
package Aws::SES::SendEmail {
  use Moose;
  has Destination => (is => 'ro', isa => 'Aws::SES::Destination', required => 1);
  has Message => (is => 'ro', isa => 'Aws::SES::Message', required => 1);
  has ReplyToAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has ReturnPath => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendEmail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::SendEmailResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendEmailResult');
}
package Aws::SES::SendRawEmail {
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Str]');
  has RawMessage => (is => 'ro', isa => 'Aws::SES::RawMessage', required => 1);
  has Source => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendRawEmail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::SendRawEmailResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendRawEmailResult');
}
package Aws::SES::SetIdentityDkimEnabled {
  use Moose;
  has DkimEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabled');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::SetIdentityDkimEnabledResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabledResult');
}
package Aws::SES::SetIdentityFeedbackForwardingEnabled {
  use Moose;
  has ForwardingEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityFeedbackForwardingEnabled');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::SetIdentityFeedbackForwardingEnabledResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityFeedbackForwardingEnabledResult');
}
package Aws::SES::SetIdentityNotificationTopic {
  use Moose;
  has Identity => (is => 'ro', isa => 'Str', required => 1);
  has NotificationType => (is => 'ro', isa => 'Str', required => 1);
  has SnsTopic => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityNotificationTopic');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::SetIdentityNotificationTopicResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityNotificationTopicResult');
}
package Aws::SES::VerifyDomainDkim {
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDomainDkim');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::VerifyDomainDkimResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyDomainDkimResult');
}
package Aws::SES::VerifyDomainIdentity {
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::VerifyDomainIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentityResult');
}
package Aws::SES::VerifyEmailAddress {
  use Moose;
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyEmailAddress');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SES::VerifyEmailIdentity {
  use Moose;
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyEmailIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::VerifyEmailIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyEmailIdentityResult');
}

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
