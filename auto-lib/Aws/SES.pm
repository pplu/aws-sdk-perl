
use AWS::API;


package Aws::SES::Body {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Html => (is => 'ro', isa => 'Aws::SES::Content');
  has Text => (is => 'ro', isa => 'Aws::SES::Content');
}

package Aws::SES::Content {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Charset => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SES::Destination {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Data => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SES::SendDataPoint {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdentity');
  has _returns => (isa => 'Aws::SES::DeleteIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIdentityResult');  
}
package Aws::SES::DeleteVerifiedEmailAddress {
  use Moose;
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVerifiedEmailAddress');
  has _returns => (isa => 'Aws::SES::DeleteVerifiedEmailAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVerifiedEmailAddressResult');  
}
package Aws::SES::GetIdentityDkimAttributes {
  use Moose;
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributes');
  has _returns => (isa => 'Aws::SES::GetIdentityDkimAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributesResult');  
}
package Aws::SES::GetIdentityNotificationAttributes {
  use Moose;
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityNotificationAttributes');
  has _returns => (isa => 'Aws::SES::GetIdentityNotificationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityNotificationAttributesResult');  
}
package Aws::SES::GetIdentityVerificationAttributes {
  use Moose;
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributes');
  has _returns => (isa => 'Aws::SES::GetIdentityVerificationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributesResult');  
}
package Aws::SES::GetSendQuota {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSendQuota');
  has _returns => (isa => 'Aws::SES::GetSendQuotaResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSendQuotaResult');  
}
package Aws::SES::GetSendStatistics {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSendStatistics');
  has _returns => (isa => 'Aws::SES::GetSendStatisticsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSendStatisticsResult');  
}
package Aws::SES::ListIdentities {
  use Moose;
  has IdentityType => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentities');
  has _returns => (isa => 'Aws::SES::ListIdentitiesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListIdentitiesResult');  
}
package Aws::SES::ListVerifiedEmailAddresses {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddresses');
  has _returns => (isa => 'Aws::SES::ListVerifiedEmailAddressesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddressesResult');  
}
package Aws::SES::SendEmail {
  use Moose;
  has Destination => (is => 'ro', isa => 'Aws::SES::Destination', required => 1);
  has Message => (is => 'ro', isa => 'Aws::SES::Message', required => 1);
  has ReplyToAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has ReturnPath => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendEmail');
  has _returns => (isa => 'Aws::SES::SendEmailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendEmailResult');  
}
package Aws::SES::SendRawEmail {
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Str]');
  has RawMessage => (is => 'ro', isa => 'Aws::SES::RawMessage', required => 1);
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendRawEmail');
  has _returns => (isa => 'Aws::SES::SendRawEmailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendRawEmailResult');  
}
package Aws::SES::SetIdentityDkimEnabled {
  use Moose;
  has DkimEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabled');
  has _returns => (isa => 'Aws::SES::SetIdentityDkimEnabledResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabledResult');  
}
package Aws::SES::SetIdentityFeedbackForwardingEnabled {
  use Moose;
  has ForwardingEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityFeedbackForwardingEnabled');
  has _returns => (isa => 'Aws::SES::SetIdentityFeedbackForwardingEnabledResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityFeedbackForwardingEnabledResult');  
}
package Aws::SES::SetIdentityNotificationTopic {
  use Moose;
  has Identity => (is => 'ro', isa => 'Str', required => 1);
  has NotificationType => (is => 'ro', isa => 'Str', required => 1);
  has SnsTopic => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityNotificationTopic');
  has _returns => (isa => 'Aws::SES::SetIdentityNotificationTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityNotificationTopicResult');  
}
package Aws::SES::VerifyDomainDkim {
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDomainDkim');
  has _returns => (isa => 'Aws::SES::VerifyDomainDkimResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyDomainDkimResult');  
}
package Aws::SES::VerifyDomainIdentity {
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentity');
  has _returns => (isa => 'Aws::SES::VerifyDomainIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentityResult');  
}
package Aws::SES::VerifyEmailAddress {
  use Moose;
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyEmailAddress');
  has _returns => (isa => 'Aws::SES::VerifyEmailAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyEmailAddressResult');  
}
package Aws::SES::VerifyEmailIdentity {
  use Moose;
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyEmailIdentity');
  has _returns => (isa => 'Aws::SES::VerifyEmailIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyEmailIdentityResult');  
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
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub DeleteIdentity {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::DeleteIdentity', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::DeleteIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteVerifiedEmailAddress {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::DeleteVerifiedEmailAddress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub GetIdentityDkimAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::GetIdentityDkimAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::GetIdentityDkimAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetIdentityNotificationAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::GetIdentityNotificationAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::GetIdentityNotificationAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetIdentityVerificationAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::GetIdentityVerificationAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::GetIdentityVerificationAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetSendQuota {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::GetSendQuota', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::GetSendQuotaResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetSendStatistics {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::GetSendStatistics', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::GetSendStatisticsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListIdentities {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::ListIdentities', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::ListIdentitiesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListVerifiedEmailAddresses {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::ListVerifiedEmailAddresses', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::ListVerifiedEmailAddressesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SendEmail {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::SendEmail', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::SendEmailResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SendRawEmail {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::SendRawEmail', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::SendRawEmailResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SetIdentityDkimEnabled {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::SetIdentityDkimEnabled', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::SetIdentityDkimEnabledResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SetIdentityFeedbackForwardingEnabled {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::SetIdentityFeedbackForwardingEnabled', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::SetIdentityFeedbackForwardingEnabledResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SetIdentityNotificationTopic {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::SetIdentityNotificationTopic', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::SetIdentityNotificationTopicResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub VerifyDomainDkim {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::VerifyDomainDkim', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::VerifyDomainDkimResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub VerifyDomainIdentity {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::VerifyDomainIdentity', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::VerifyDomainIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub VerifyEmailAddress {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::VerifyEmailAddress', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub VerifyEmailIdentity {
    my $self = shift;
    my $call = new_with_coercions('Aws::SES::VerifyEmailIdentity', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::VerifyEmailIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
