
use MooseX::Declare;
use AWS::API;


class Aws::SES::Body with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Html => (is => 'ro', isa => 'Aws::SES::Content');
  has Text => (is => 'ro', isa => 'Aws::SES::Content');
}

class Aws::SES::Content with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Charset => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SES::Destination with (AWS::API::ResultParser, AWS::API::ToParams) {
  has BccAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has CcAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has ToAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
}

class Aws::SES::DkimAttributes with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::SES::Message with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Body => (is => 'ro', isa => 'Aws::SES::Body', required => 1);
  has Subject => (is => 'ro', isa => 'Aws::SES::Content', required => 1);
}

class Aws::SES::NotificationAttributes with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::SES::RawMessage with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Data => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SES::SendDataPoint with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Bounces => (is => 'ro', isa => 'Num');
  has Complaints => (is => 'ro', isa => 'Num');
  has DeliveryAttempts => (is => 'ro', isa => 'Num');
  has Rejects => (is => 'ro', isa => 'Num');
  has Timestamp => (is => 'ro', isa => 'Str');
}

class Aws::SES::VerificationAttributes with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}



class Aws::SES::DeleteIdentity {
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdentity');
  has _returns => (isa => 'Aws::SES::DeleteIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIdentityResult');  
}
class Aws::SES::DeleteVerifiedEmailAddress {
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVerifiedEmailAddress');
  has _returns => (isa => 'Aws::SES::DeleteVerifiedEmailAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVerifiedEmailAddressResult');  
}
class Aws::SES::GetIdentityDkimAttributes {
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributes');
  has _returns => (isa => 'Aws::SES::GetIdentityDkimAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributesResult');  
}
class Aws::SES::GetIdentityNotificationAttributes {
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityNotificationAttributes');
  has _returns => (isa => 'Aws::SES::GetIdentityNotificationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityNotificationAttributesResult');  
}
class Aws::SES::GetIdentityVerificationAttributes {
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributes');
  has _returns => (isa => 'Aws::SES::GetIdentityVerificationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributesResult');  
}
class Aws::SES::GetSendQuota {

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSendQuota');
  has _returns => (isa => 'Aws::SES::GetSendQuotaResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSendQuotaResult');  
}
class Aws::SES::GetSendStatistics {

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSendStatistics');
  has _returns => (isa => 'Aws::SES::GetSendStatisticsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSendStatisticsResult');  
}
class Aws::SES::ListIdentities {
  has IdentityType => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentities');
  has _returns => (isa => 'Aws::SES::ListIdentitiesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListIdentitiesResult');  
}
class Aws::SES::ListVerifiedEmailAddresses {

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddresses');
  has _returns => (isa => 'Aws::SES::ListVerifiedEmailAddressesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddressesResult');  
}
class Aws::SES::SendEmail {
  has Destination => (is => 'ro', isa => 'Aws::SES::Destination', required => 1);
  has Message => (is => 'ro', isa => 'Aws::SES::Message', required => 1);
  has ReplyToAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has ReturnPath => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendEmail');
  has _returns => (isa => 'Aws::SES::SendEmailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendEmailResult');  
}
class Aws::SES::SendRawEmail {
  has Destinations => (is => 'ro', isa => 'ArrayRef[Str]');
  has RawMessage => (is => 'ro', isa => 'Aws::SES::RawMessage', required => 1);
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendRawEmail');
  has _returns => (isa => 'Aws::SES::SendRawEmailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendRawEmailResult');  
}
class Aws::SES::SetIdentityDkimEnabled {
  has DkimEnabled => (is => 'ro', isa => 'Str', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabled');
  has _returns => (isa => 'Aws::SES::SetIdentityDkimEnabledResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabledResult');  
}
class Aws::SES::SetIdentityFeedbackForwardingEnabled {
  has ForwardingEnabled => (is => 'ro', isa => 'Str', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityFeedbackForwardingEnabled');
  has _returns => (isa => 'Aws::SES::SetIdentityFeedbackForwardingEnabledResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityFeedbackForwardingEnabledResult');  
}
class Aws::SES::SetIdentityNotificationTopic {
  has Identity => (is => 'ro', isa => 'Str', required => 1);
  has NotificationType => (is => 'ro', isa => 'Str', required => 1);
  has SnsTopic => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityNotificationTopic');
  has _returns => (isa => 'Aws::SES::SetIdentityNotificationTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityNotificationTopicResult');  
}
class Aws::SES::VerifyDomainDkim {
  has Domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDomainDkim');
  has _returns => (isa => 'Aws::SES::VerifyDomainDkimResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyDomainDkimResult');  
}
class Aws::SES::VerifyDomainIdentity {
  has Domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentity');
  has _returns => (isa => 'Aws::SES::VerifyDomainIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentityResult');  
}
class Aws::SES::VerifyEmailAddress {
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyEmailAddress');
  has _returns => (isa => 'Aws::SES::VerifyEmailAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyEmailAddressResult');  
}
class Aws::SES::VerifyEmailIdentity {
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyEmailIdentity');
  has _returns => (isa => 'Aws::SES::VerifyEmailIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyEmailIdentityResult');  
}

class Aws::SES::DeleteIdentityResult with AWS::API::ResultParser {

}
class Aws::SES::GetIdentityDkimAttributesResult with AWS::API::ResultParser {
  has DkimAttributes => (is => 'ro', isa => 'Aws::SES::DkimAttributes', required => 1);

}
class Aws::SES::GetIdentityNotificationAttributesResult with AWS::API::ResultParser {
  has NotificationAttributes => (is => 'ro', isa => 'Aws::SES::NotificationAttributes', required => 1);

}
class Aws::SES::GetIdentityVerificationAttributesResult with AWS::API::ResultParser {
  has VerificationAttributes => (is => 'ro', isa => 'Aws::SES::VerificationAttributes', required => 1);

}
class Aws::SES::GetSendQuotaResult with AWS::API::ResultParser {
  has Max24HourSend => (is => 'ro', isa => 'Num');
  has MaxSendRate => (is => 'ro', isa => 'Num');
  has SentLast24Hours => (is => 'ro', isa => 'Num');

}
class Aws::SES::GetSendStatisticsResult with AWS::API::ResultParser {
  has SendDataPoints => (is => 'ro', isa => 'ArrayRef[Aws::SES::SendDataPoint]');

}
class Aws::SES::ListIdentitiesResult with AWS::API::ResultParser {
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
class Aws::SES::ListVerifiedEmailAddressesResult with AWS::API::ResultParser {
  has VerifiedEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::SES::SendEmailResult with AWS::API::ResultParser {
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::SES::SendRawEmailResult with AWS::API::ResultParser {
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::SES::SetIdentityDkimEnabledResult with AWS::API::ResultParser {

}
class Aws::SES::SetIdentityFeedbackForwardingEnabledResult with AWS::API::ResultParser {

}
class Aws::SES::SetIdentityNotificationTopicResult with AWS::API::ResultParser {

}
class Aws::SES::VerifyDomainDkimResult with AWS::API::ResultParser {
  has DkimTokens => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
class Aws::SES::VerifyDomainIdentityResult with AWS::API::ResultParser {
  has VerificationToken => (is => 'ro', isa => 'Str', required => 1);

}
class Aws::SES::VerifyEmailIdentityResult with AWS::API::ResultParser {

}

class Aws::SES with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'email');
  has version => (is => 'ro', isa => 'Str', default => '2010-12-01');
  
  method DeleteIdentity (%args) {
    my $call = Aws::SES::DeleteIdentity->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::DeleteIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteVerifiedEmailAddress (%args) {
    my $call = Aws::SES::DeleteVerifiedEmailAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method GetIdentityDkimAttributes (%args) {
    my $call = Aws::SES::GetIdentityDkimAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::GetIdentityDkimAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetIdentityNotificationAttributes (%args) {
    my $call = Aws::SES::GetIdentityNotificationAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::GetIdentityNotificationAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetIdentityVerificationAttributes (%args) {
    my $call = Aws::SES::GetIdentityVerificationAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::GetIdentityVerificationAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetSendQuota (%args) {
    my $call = Aws::SES::GetSendQuota->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::GetSendQuotaResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetSendStatistics (%args) {
    my $call = Aws::SES::GetSendStatistics->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::GetSendStatisticsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListIdentities (%args) {
    my $call = Aws::SES::ListIdentities->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::ListIdentitiesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListVerifiedEmailAddresses (%args) {
    my $call = Aws::SES::ListVerifiedEmailAddresses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::ListVerifiedEmailAddressesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SendEmail (%args) {
    my $call = Aws::SES::SendEmail->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::SendEmailResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SendRawEmail (%args) {
    my $call = Aws::SES::SendRawEmail->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::SendRawEmailResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetIdentityDkimEnabled (%args) {
    my $call = Aws::SES::SetIdentityDkimEnabled->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::SetIdentityDkimEnabledResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetIdentityFeedbackForwardingEnabled (%args) {
    my $call = Aws::SES::SetIdentityFeedbackForwardingEnabled->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::SetIdentityFeedbackForwardingEnabledResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetIdentityNotificationTopic (%args) {
    my $call = Aws::SES::SetIdentityNotificationTopic->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::SetIdentityNotificationTopicResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method VerifyDomainDkim (%args) {
    my $call = Aws::SES::VerifyDomainDkim->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::VerifyDomainDkimResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method VerifyDomainIdentity (%args) {
    my $call = Aws::SES::VerifyDomainIdentity->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::VerifyDomainIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method VerifyEmailAddress (%args) {
    my $call = Aws::SES::VerifyEmailAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method VerifyEmailIdentity (%args) {
    my $call = Aws::SES::VerifyEmailIdentity->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SES::VerifyEmailIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
