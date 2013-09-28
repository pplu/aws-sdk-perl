use MooseX::Declare;
use AWS::API;
class AWS::SQS::Attributes with AWS::API::MapParser {
  has Policy => (is => 'ro', isa => 'Str');
  has VisibilityTimeout => (is => 'ro', isa => 'Str');
  has MaximumMessageSize => (is => 'ro', isa => 'Str');
  has MessageRetentionPeriod => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessages => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessagesNotVisible => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str');
  has QueueArn => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessagesDelayed => (is => 'ro', isa => 'Str');
  has DelaySeconds => (is => 'ro', isa => 'Str');
  has ReceiveMessageWaitTimeSeconds => (is => 'ro', isa => 'Str');
}

class AWS::SQS::BatchResultErrorEntry with AWS::API::ResultParser {
  has Code => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str');
  has SenderFault => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SQS::ChangeMessageVisibilityBatchRequestEntry with AWS::API::ResultParser {
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SQS::ChangeMessageVisibilityBatchResultEntry with AWS::API::ResultParser {
  has Id => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SQS::DeleteMessageBatchRequestEntry with AWS::API::ResultParser {
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SQS::DeleteMessageBatchResultEntry with AWS::API::ResultParser {
  has Id => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SQS::Message with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'AWS::SQS::Attributes');
  has ReceiptHandle => (is => 'ro', isa => 'Str');
  has MD5OfBody => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');
  has Body => (is => 'ro', isa => 'Str');
}

class AWS::SQS::SendMessageBatchRequestEntry with AWS::API::ResultParser {
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has DelaySeconds => (is => 'ro', isa => 'Int');
}

class AWS::SQS::SendMessageBatchResultEntry with AWS::API::ResultParser {
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has MD5OfMessageBody => (is => 'ro', isa => 'Str', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::SQS::SendMessage {
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
  has DelaySeconds => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessage');
  has _returns => (isa => 'AWS::SQS::SendMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendMessageResult');
}
class AWS::SQS::RemovePermission {
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has Label => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  has _returns => (isa => 'AWS::SQS::RemovePermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemovePermissionResult');
}
class AWS::SQS::ListQueues {
  has QueueNamePrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueues');
  has _returns => (isa => 'AWS::SQS::ListQueuesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListQueuesResult');
}
class AWS::SQS::DeleteMessageBatch {
  has Entries => (is => 'ro', isa => 'ArrayRef[AWS::SQS::DeleteMessageBatchRequestEntry]', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatch');
  has _returns => (isa => 'AWS::SQS::DeleteMessageBatchResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatchResult');
}
class AWS::SQS::SetQueueAttributes {
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has Attributes => (is => 'ro', isa => 'AWS::SQS::Attributes', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetQueueAttributes');
  has _returns => (isa => 'AWS::SQS::SetQueueAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetQueueAttributesResult');
}
class AWS::SQS::CreateQueue {
  has QueueName => (is => 'ro', isa => 'Str', required => 1);
  has Attributes => (is => 'ro', isa => 'AWS::SQS::Attributes');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueue');
  has _returns => (isa => 'AWS::SQS::CreateQueueResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateQueueResult');
}
class AWS::SQS::SendMessageBatch {
  has Entries => (is => 'ro', isa => 'ArrayRef[AWS::SQS::SendMessageBatchRequestEntry]', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessageBatch');
  has _returns => (isa => 'AWS::SQS::SendMessageBatchResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendMessageBatchResult');
}
class AWS::SQS::ReceiveMessage {
  has WaitTimeSeconds => (is => 'ro', isa => 'Int');
  has MaxNumberOfMessages => (is => 'ro', isa => 'Int');
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReceiveMessage');
  has _returns => (isa => 'AWS::SQS::ReceiveMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReceiveMessageResult');
}
class AWS::SQS::ChangeMessageVisibilityBatch {
  has Entries => (is => 'ro', isa => 'ArrayRef[AWS::SQS::ChangeMessageVisibilityBatchRequestEntry]', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibilityBatch');
  has _returns => (isa => 'AWS::SQS::ChangeMessageVisibilityBatchResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibilityBatchResult');
}
class AWS::SQS::GetQueueAttributes {
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueAttributes');
  has _returns => (isa => 'AWS::SQS::GetQueueAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetQueueAttributesResult');
}
class AWS::SQS::GetQueueUrl {
  has QueueName => (is => 'ro', isa => 'Str', required => 1);
  has QueueOwnerAWSAccountId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueUrl');
  has _returns => (isa => 'AWS::SQS::GetQueueUrlResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetQueueUrlResult');
}
class AWS::SQS::DeleteMessage {
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessage');
  has _returns => (isa => 'AWS::SQS::DeleteMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteMessageResult');
}
class AWS::SQS::AddPermission {
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has Actions => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has AWSAccountIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  has _returns => (isa => 'AWS::SQS::AddPermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddPermissionResult');
}
class AWS::SQS::ChangeMessageVisibility {
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibility');
  has _returns => (isa => 'AWS::SQS::ChangeMessageVisibilityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibilityResult');
}
class AWS::SQS::DeleteQueue {
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteQueue');
  has _returns => (isa => 'AWS::SQS::DeleteQueueResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteQueueResult');
}
class AWS::SQS::SendMessageResult with AWS::API::ResultParser {
  has MD5OfMessageBody => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');
}
class AWS::SQS::ListQueuesResult with AWS::API::ResultParser {
  has QueueUrls => (is => 'ro', isa => 'ArrayRef[Str]');
}
class AWS::SQS::DeleteMessageBatchResult with AWS::API::ResultParser {
  has Successful => (is => 'ro', isa => 'ArrayRef[AWS::SQS::DeleteMessageBatchResultEntry]', required => 1);
  has Failed => (is => 'ro', isa => 'ArrayRef[AWS::SQS::BatchResultErrorEntry]', required => 1);
}
class AWS::SQS::CreateQueueResult with AWS::API::ResultParser {
  has QueueUrl => (is => 'ro', isa => 'Str');
}
class AWS::SQS::SendMessageBatchResult with AWS::API::ResultParser {
  has Successful => (is => 'ro', isa => 'ArrayRef[AWS::SQS::SendMessageBatchResultEntry]', required => 1);
  has Failed => (is => 'ro', isa => 'ArrayRef[AWS::SQS::BatchResultErrorEntry]', required => 1);
}
class AWS::SQS::ReceiveMessageResult with AWS::API::ResultParser {
  has Messages => (is => 'ro', isa => 'ArrayRef[AWS::SQS::Message]');
}
class AWS::SQS::ChangeMessageVisibilityBatchResult with AWS::API::ResultParser {
  has Successful => (is => 'ro', isa => 'ArrayRef[AWS::SQS::ChangeMessageVisibilityBatchResultEntry]', required => 1);
  has Failed => (is => 'ro', isa => 'ArrayRef[AWS::SQS::BatchResultErrorEntry]', required => 1);
}
class AWS::SQS::GetQueueAttributesResult with AWS::API::ResultParser {
  has Attributes => (is => 'ro', isa => 'AWS::SQS::Attributes');
}
class AWS::SQS::GetQueueUrlResult with AWS::API::ResultParser {
  has QueueUrl => (is => 'ro', isa => 'Str');
}
class AWS::SQS with AWS::API::Caller {
  has service => (is => 'ro', isa => 'Str', default => 'sqs');
  has version => (is => 'ro', isa => 'Str', default => '2012-11-05');

  method SendMessage (%args) {
    my $call = AWS::SQS::SendMessage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::SendMessageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RemovePermission (%args) {
    my $call = AWS::SQS::RemovePermission->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::RemovePermissionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ListQueues (%args) {
    my $call = AWS::SQS::ListQueues->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::ListQueuesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteMessageBatch (%args) {
    my $call = AWS::SQS::DeleteMessageBatch->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::DeleteMessageBatchResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method SetQueueAttributes (%args) {
    my $call = AWS::SQS::SetQueueAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::SetQueueAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateQueue (%args) {
    my $call = AWS::SQS::CreateQueue->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::CreateQueueResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method SendMessageBatch (%args) {
    my $call = AWS::SQS::SendMessageBatch->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::SendMessageBatchResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ReceiveMessage (%args) {
    my $call = AWS::SQS::ReceiveMessage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::ReceiveMessageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ChangeMessageVisibilityBatch (%args) {
    my $call = AWS::SQS::ChangeMessageVisibilityBatch->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::ChangeMessageVisibilityBatchResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method GetQueueAttributes (%args) {
    my $call = AWS::SQS::GetQueueAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::GetQueueAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method GetQueueUrl (%args) {
    my $call = AWS::SQS::GetQueueUrl->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::GetQueueUrlResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteMessage (%args) {
    my $call = AWS::SQS::DeleteMessage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::DeleteMessageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AddPermission (%args) {
    my $call = AWS::SQS::AddPermission->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::AddPermissionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ChangeMessageVisibility (%args) {
    my $call = AWS::SQS::ChangeMessageVisibility->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::ChangeMessageVisibilityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteQueue (%args) {
    my $call = AWS::SQS::DeleteQueue->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::SQS::DeleteQueueResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

}

