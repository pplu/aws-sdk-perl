
use MooseX::Declare;
use AWS::API;


class Aws::SQS::AttributeMap with AWS::API::MapParser {
  has ApproximateNumberOfMessages => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessagesDelayed => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessagesNotVisible => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has DelaySeconds => (is => 'ro', isa => 'Str');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str');
  has MaximumMessageSize => (is => 'ro', isa => 'Str');
  has MessageRetentionPeriod => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has QueueArn => (is => 'ro', isa => 'Str');
  has ReceiveMessageWaitTimeSeconds => (is => 'ro', isa => 'Str');
  has VisibilityTimeout => (is => 'ro', isa => 'Str');
}

class Aws::SQS::BatchResultErrorEntry with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Code => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str');
  has SenderFault => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SQS::ChangeMessageVisibilityBatchRequestEntry with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
}

class Aws::SQS::ChangeMessageVisibilityBatchResultEntry with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Id => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SQS::DeleteMessageBatchRequestEntry with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SQS::DeleteMessageBatchResultEntry with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Id => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SQS::Message with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap');
  has Body => (is => 'ro', isa => 'Str');
  has MD5OfBody => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');
  has ReceiptHandle => (is => 'ro', isa => 'Str');
}

class Aws::SQS::SendMessageBatchRequestEntry with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DelaySeconds => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::SQS::SendMessageBatchResultEntry with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has MD5OfMessageBody => (is => 'ro', isa => 'Str', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', required => 1);
}



class Aws::SQS::AddPermission {
  has Actions => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has AWSAccountIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  has _returns => (isa => 'Aws::SQS::AddPermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddPermissionResult');  
}
class Aws::SQS::ChangeMessageVisibility {
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibility');
  has _returns => (isa => 'Aws::SQS::ChangeMessageVisibilityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibilityResult');  
}
class Aws::SQS::ChangeMessageVisibilityBatch {
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::SQS::ChangeMessageVisibilityBatchRequestEntry]', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibilityBatch');
  has _returns => (isa => 'Aws::SQS::ChangeMessageVisibilityBatchResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibilityBatchResult');  
}
class Aws::SQS::CreateQueue {
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap');
  has QueueName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueue');
  has _returns => (isa => 'Aws::SQS::CreateQueueResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateQueueResult');  
}
class Aws::SQS::DeleteMessage {
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessage');
  has _returns => (isa => 'Aws::SQS::DeleteMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteMessageResult');  
}
class Aws::SQS::DeleteMessageBatch {
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::SQS::DeleteMessageBatchRequestEntry]', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatch');
  has _returns => (isa => 'Aws::SQS::DeleteMessageBatchResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatchResult');  
}
class Aws::SQS::DeleteQueue {
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteQueue');
  has _returns => (isa => 'Aws::SQS::DeleteQueueResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteQueueResult');  
}
class Aws::SQS::GetQueueAttributes {
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueAttributes');
  has _returns => (isa => 'Aws::SQS::GetQueueAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetQueueAttributesResult');  
}
class Aws::SQS::GetQueueUrl {
  has QueueName => (is => 'ro', isa => 'Str', required => 1);
  has QueueOwnerAWSAccountId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueUrl');
  has _returns => (isa => 'Aws::SQS::GetQueueUrlResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetQueueUrlResult');  
}
class Aws::SQS::ListQueues {
  has QueueNamePrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueues');
  has _returns => (isa => 'Aws::SQS::ListQueuesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListQueuesResult');  
}
class Aws::SQS::ReceiveMessage {
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxNumberOfMessages => (is => 'ro', isa => 'Int');
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
  has WaitTimeSeconds => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReceiveMessage');
  has _returns => (isa => 'Aws::SQS::ReceiveMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReceiveMessageResult');  
}
class Aws::SQS::RemovePermission {
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  has _returns => (isa => 'Aws::SQS::RemovePermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemovePermissionResult');  
}
class Aws::SQS::SendMessage {
  has DelaySeconds => (is => 'ro', isa => 'Int');
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessage');
  has _returns => (isa => 'Aws::SQS::SendMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendMessageResult');  
}
class Aws::SQS::SendMessageBatch {
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::SQS::SendMessageBatchRequestEntry]', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessageBatch');
  has _returns => (isa => 'Aws::SQS::SendMessageBatchResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendMessageBatchResult');  
}
class Aws::SQS::SetQueueAttributes {
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetQueueAttributes');
  has _returns => (isa => 'Aws::SQS::SetQueueAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetQueueAttributesResult');  
}

class Aws::SQS::ChangeMessageVisibilityBatchResult with AWS::API::ResultParser {
  has Failed => (is => 'ro', isa => 'ArrayRef[Aws::SQS::BatchResultErrorEntry]', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Aws::SQS::ChangeMessageVisibilityBatchResultEntry]', required => 1);

}
class Aws::SQS::CreateQueueResult with AWS::API::ResultParser {
  has QueueUrl => (is => 'ro', isa => 'Str');

}
class Aws::SQS::DeleteMessageBatchResult with AWS::API::ResultParser {
  has Failed => (is => 'ro', isa => 'ArrayRef[Aws::SQS::BatchResultErrorEntry]', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Aws::SQS::DeleteMessageBatchResultEntry]', required => 1);

}
class Aws::SQS::GetQueueAttributesResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap');

}
class Aws::SQS::GetQueueUrlResult with AWS::API::ResultParser {
  has QueueUrl => (is => 'ro', isa => 'Str');

}
class Aws::SQS::ListQueuesResult with AWS::API::ResultParser {
  has QueueUrls => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::SQS::ReceiveMessageResult with AWS::API::ResultParser {
  has Messages => (is => 'ro', isa => 'ArrayRef[Aws::SQS::Message]');

}
class Aws::SQS::SendMessageResult with AWS::API::ResultParser {
  has MD5OfMessageBody => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');

}
class Aws::SQS::SendMessageBatchResult with AWS::API::ResultParser {
  has Failed => (is => 'ro', isa => 'ArrayRef[Aws::SQS::BatchResultErrorEntry]', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Aws::SQS::SendMessageBatchResultEntry]', required => 1);

}

class Aws::SQS with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'sqs');
  has version => (is => 'ro', isa => 'Str', default => '2012-11-05');
  
  method AddPermission (%args) {
    my $call = Aws::SQS::AddPermission->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ChangeMessageVisibility (%args) {
    my $call = Aws::SQS::ChangeMessageVisibility->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method ChangeMessageVisibilityBatch (%args) {
    my $call = Aws::SQS::ChangeMessageVisibilityBatch->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::ChangeMessageVisibilityBatchResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateQueue (%args) {
    my $call = Aws::SQS::CreateQueue->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::CreateQueueResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteMessage (%args) {
    my $call = Aws::SQS::DeleteMessage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method DeleteMessageBatch (%args) {
    my $call = Aws::SQS::DeleteMessageBatch->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::DeleteMessageBatchResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteQueue (%args) {
    my $call = Aws::SQS::DeleteQueue->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method GetQueueAttributes (%args) {
    my $call = Aws::SQS::GetQueueAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::GetQueueAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetQueueUrl (%args) {
    my $call = Aws::SQS::GetQueueUrl->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::GetQueueUrlResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ListQueues (%args) {
    my $call = Aws::SQS::ListQueues->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::ListQueuesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ReceiveMessage (%args) {
    my $call = Aws::SQS::ReceiveMessage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::ReceiveMessageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RemovePermission (%args) {
    my $call = Aws::SQS::RemovePermission->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  method SendMessage (%args) {
    my $call = Aws::SQS::SendMessage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::SendMessageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SendMessageBatch (%args) {
    my $call = Aws::SQS::SendMessageBatch->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::SendMessageBatchResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetQueueAttributes (%args) {
    my $call = Aws::SQS::SetQueueAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
