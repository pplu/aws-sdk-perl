
use MooseX::Declare;
use AWS::API;


class AWS::SES::Body with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Html => (is => 'ro', isa => 'AWS::SES::Content');
  has Text => (is => 'ro', isa => 'AWS::SES::Content');
}

class AWS::SES::Content with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Charset => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SES::Destination with (AWS::API::ResultParser, AWS::API::ToParams) {
  has BccAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has CcAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has ToAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::SES::DkimAttributes with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class AWS::SES::Message with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Body => (is => 'ro', isa => 'AWS::SES::Body', required => 1);
  has Subject => (is => 'ro', isa => 'AWS::SES::Content', required => 1);
}

class AWS::SES::NotificationAttributes with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class AWS::SES::RawMessage with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Data => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SES::SendDataPoint with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Bounces => (is => 'ro', isa => 'Num');
  has Complaints => (is => 'ro', isa => 'Num');
  has DeliveryAttempts => (is => 'ro', isa => 'Num');
  has Rejects => (is => 'ro', isa => 'Num');
  has Timestamp => (is => 'ro', isa => 'Str');
}

class AWS::SES::VerificationAttributes with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}



class AWS::SES::DeleteIdentity {
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdentity');
  has _returns => (isa => 'AWS::SES::DeleteIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIdentityResult');  
}
class AWS::SES::DeleteVerifiedEmailAddress {
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVerifiedEmailAddress');
  has _returns => (isa => 'AWS::SES::DeleteVerifiedEmailAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteVerifiedEmailAddressResult');  
}
class AWS::SES::GetIdentityDkimAttributes {
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributes');
  has _returns => (isa => 'AWS::SES::GetIdentityDkimAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityDkimAttributesResult');  
}
class AWS::SES::GetIdentityNotificationAttributes {
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityNotificationAttributes');
  has _returns => (isa => 'AWS::SES::GetIdentityNotificationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityNotificationAttributesResult');  
}
class AWS::SES::GetIdentityVerificationAttributes {
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributes');
  has _returns => (isa => 'AWS::SES::GetIdentityVerificationAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityVerificationAttributesResult');  
}
class AWS::SES::GetSendQuota {

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSendQuota');
  has _returns => (isa => 'AWS::SES::GetSendQuotaResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSendQuotaResult');  
}
class AWS::SES::GetSendStatistics {

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSendStatistics');
  has _returns => (isa => 'AWS::SES::GetSendStatisticsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSendStatisticsResult');  
}
class AWS::SES::ListIdentities {
  has IdentityType => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentities');
  has _returns => (isa => 'AWS::SES::ListIdentitiesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListIdentitiesResult');  
}
class AWS::SES::ListVerifiedEmailAddresses {

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddresses');
  has _returns => (isa => 'AWS::SES::ListVerifiedEmailAddressesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListVerifiedEmailAddressesResult');  
}
class AWS::SES::SendEmail {
  has Destination => (is => 'ro', isa => 'AWS::SES::Destination', required => 1);
  has Message => (is => 'ro', isa => 'AWS::SES::Message', required => 1);
  has ReplyToAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has ReturnPath => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendEmail');
  has _returns => (isa => 'AWS::SES::SendEmailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendEmailResult');  
}
class AWS::SES::SendRawEmail {
  has Destinations => (is => 'ro', isa => 'ArrayRef[Str]');
  has RawMessage => (is => 'ro', isa => 'AWS::SES::RawMessage', required => 1);
  has Source => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendRawEmail');
  has _returns => (isa => 'AWS::SES::SendRawEmailResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendRawEmailResult');  
}
class AWS::SES::SetIdentityDkimEnabled {
  has DkimEnabled => (is => 'ro', isa => 'Str', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabled');
  has _returns => (isa => 'AWS::SES::SetIdentityDkimEnabledResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityDkimEnabledResult');  
}
class AWS::SES::SetIdentityFeedbackForwardingEnabled {
  has ForwardingEnabled => (is => 'ro', isa => 'Str', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityFeedbackForwardingEnabled');
  has _returns => (isa => 'AWS::SES::SetIdentityFeedbackForwardingEnabledResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityFeedbackForwardingEnabledResult');  
}
class AWS::SES::SetIdentityNotificationTopic {
  has Identity => (is => 'ro', isa => 'Str', required => 1);
  has NotificationType => (is => 'ro', isa => 'Str', required => 1);
  has SnsTopic => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityNotificationTopic');
  has _returns => (isa => 'AWS::SES::SetIdentityNotificationTopicResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityNotificationTopicResult');  
}
class AWS::SES::VerifyDomainDkim {
  has Domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDomainDkim');
  has _returns => (isa => 'AWS::SES::VerifyDomainDkimResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyDomainDkimResult');  
}
class AWS::SES::VerifyDomainIdentity {
  has Domain => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentity');
  has _returns => (isa => 'AWS::SES::VerifyDomainIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentityResult');  
}
class AWS::SES::VerifyEmailAddress {
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyEmailAddress');
  has _returns => (isa => 'AWS::SES::VerifyEmailAddressResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyEmailAddressResult');  
}
class AWS::SES::VerifyEmailIdentity {
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyEmailIdentity');
  has _returns => (isa => 'AWS::SES::VerifyEmailIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyEmailIdentityResult');  
}

class AWS::SES::DeleteIdentityResult with AWS::API::ResultParser {

}
class AWS::SES::GetIdentityDkimAttributesResult with AWS::API::ResultParser {
  has DkimAttributes => (is => 'ro', isa => 'AWS::SES::DkimAttributes', required => 1);

}
class AWS::SES::GetIdentityNotificationAttributesResult with AWS::API::ResultParser {
  has NotificationAttributes => (is => 'ro', isa => 'AWS::SES::NotificationAttributes', required => 1);

}
class AWS::SES::GetIdentityVerificationAttributesResult with AWS::API::ResultParser {
  has VerificationAttributes => (is => 'ro', isa => 'AWS::SES::VerificationAttributes', required => 1);

}
class AWS::SES::GetSendQuotaResult with AWS::API::ResultParser {
  has Max24HourSend => (is => 'ro', isa => 'Num');
  has MaxSendRate => (is => 'ro', isa => 'Num');
  has SentLast24Hours => (is => 'ro', isa => 'Num');

}
class AWS::SES::GetSendStatisticsResult with AWS::API::ResultParser {
  has SendDataPoints => (is => 'ro', isa => 'ArrayRef[AWS::SES::SendDataPoint]');

}
class AWS::SES::ListIdentitiesResult with AWS::API::ResultParser {
  has Identities => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

}
class AWS::SES::ListVerifiedEmailAddressesResult with AWS::API::ResultParser {
  has VerifiedEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');

}
class AWS::SES::SendEmailResult with AWS::API::ResultParser {
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::SES::SendRawEmailResult with AWS::API::ResultParser {
  has MessageId => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::SES::SetIdentityDkimEnabledResult with AWS::API::ResultParser {

}
class AWS::SES::SetIdentityFeedbackForwardingEnabledResult with AWS::API::ResultParser {

}
class AWS::SES::SetIdentityNotificationTopicResult with AWS::API::ResultParser {

}
class AWS::SES::VerifyDomainDkimResult with AWS::API::ResultParser {
  has DkimTokens => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
class AWS::SES::VerifyDomainIdentityResult with AWS::API::ResultParser {
  has VerificationToken => (is => 'ro', isa => 'Str', required => 1);

}
class AWS::SES::VerifyEmailIdentityResult with AWS::API::ResultParser {

}

class AWS::SES with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'email');
  has version => (is => 'ro', isa => 'Str', default => '2010-12-01');
  
  method DeleteIdentity (%args) {
    my $call = AWS::SES::DeleteIdentity->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::DeleteIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteVerifiedEmailAddress (%args) {
    my $call = AWS::SES::DeleteVerifiedEmailAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method GetIdentityDkimAttributes (%args) {
    my $call = AWS::SES::GetIdentityDkimAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::GetIdentityDkimAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetIdentityNotificationAttributes (%args) {
    my $call = AWS::SES::GetIdentityNotificationAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::GetIdentityNotificationAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetIdentityVerificationAttributes (%args) {
    my $call = AWS::SES::GetIdentityVerificationAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::GetIdentityVerificationAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetSendQuota (%args) {
    my $call = AWS::SES::GetSendQuota->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::GetSendQuotaResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetSendStatistics (%args) {
    my $call = AWS::SES::GetSendStatistics->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::GetSendStatisticsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListIdentities (%args) {
    my $call = AWS::SES::ListIdentities->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::ListIdentitiesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListVerifiedEmailAddresses (%args) {
    my $call = AWS::SES::ListVerifiedEmailAddresses->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::ListVerifiedEmailAddressesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SendEmail (%args) {
    my $call = AWS::SES::SendEmail->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::SendEmailResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SendRawEmail (%args) {
    my $call = AWS::SES::SendRawEmail->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::SendRawEmailResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetIdentityDkimEnabled (%args) {
    my $call = AWS::SES::SetIdentityDkimEnabled->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::SetIdentityDkimEnabledResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetIdentityFeedbackForwardingEnabled (%args) {
    my $call = AWS::SES::SetIdentityFeedbackForwardingEnabled->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::SetIdentityFeedbackForwardingEnabledResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetIdentityNotificationTopic (%args) {
    my $call = AWS::SES::SetIdentityNotificationTopic->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::SetIdentityNotificationTopicResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method VerifyDomainDkim (%args) {
    my $call = AWS::SES::VerifyDomainDkim->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::VerifyDomainDkimResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method VerifyDomainIdentity (%args) {
    my $call = AWS::SES::VerifyDomainIdentity->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::VerifyDomainIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method VerifyEmailAddress (%args) {
    my $call = AWS::SES::VerifyEmailAddress->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method VerifyEmailIdentity (%args) {
    my $call = AWS::SES::VerifyEmailIdentity->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SES::VerifyEmailIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
