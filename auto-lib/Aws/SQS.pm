
use AWS::API;


package Aws::SQS::AttributeMap {
  use Moose;
  with 'AWS::API::MapParser';
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
  has RedrivePolicy => (is => 'ro', isa => 'Str');
  has VisibilityTimeout => (is => 'ro', isa => 'Str');
}

package Aws::SQS::BatchResultErrorEntry {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Code => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str');
  has SenderFault => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SQS::ChangeMessageVisibilityBatchRequestEntry {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
}

package Aws::SQS::ChangeMessageVisibilityBatchResultEntry {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Id => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SQS::DeleteMessageBatchRequestEntry {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SQS::DeleteMessageBatchResultEntry {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Id => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SQS::Message {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap', traits => ['Unwrapped'], xmlname => 'Attribute');
  has Body => (is => 'ro', isa => 'Str');
  has MD5OfBody => (is => 'ro', isa => 'Str');
  has MD5OfMessageAttributes => (is => 'ro', isa => 'Str');
  has MessageAttributes => (is => 'ro', isa => 'Aws::SQS::MessageAttributeMap', traits => ['Unwrapped'], xmlname => 'MessageAttribute');
  has MessageId => (is => 'ro', isa => 'Str');
  has ReceiptHandle => (is => 'ro', isa => 'Str');
}

package Aws::SQS::MessageAttributeMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::SQS::SendMessageBatchRequestEntry {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has DelaySeconds => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has MessageAttributes => (is => 'ro', isa => 'Aws::SQS::MessageAttributeMap', traits => ['Unwrapped'], xmlname => 'MessageAttribute');
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SQS::SendMessageBatchResultEntry {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has MD5OfMessageAttributes => (is => 'ro', isa => 'Str');
  has MD5OfMessageBody => (is => 'ro', isa => 'Str', required => 1);
  has MessageId => (is => 'ro', isa => 'Str', required => 1);
}



package Aws::SQS::AddPermission {
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ActionName' , required => 1);
  has AWSAccountIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AWSAccountId' , required => 1);
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  has _returns => (isa => 'Aws::SQS::AddPermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddPermissionResult');  
}
package Aws::SQS::ChangeMessageVisibility {
  use Moose;
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibility');
  has _returns => (isa => 'Aws::SQS::ChangeMessageVisibilityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibilityResult');  
}
package Aws::SQS::ChangeMessageVisibilityBatch {
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::SQS::ChangeMessageVisibilityBatchRequestEntry]', traits => ['NameInRequest'], request_name => 'ChangeMessageVisibilityBatchRequestEntry' , required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibilityBatch');
  has _returns => (isa => 'Aws::SQS::ChangeMessageVisibilityBatchResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibilityBatchResult');  
}
package Aws::SQS::CreateQueue {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap', traits => ['NameInRequest'], request_name => 'Attribute' , traits => ['NameInRequest'], request_name => 'Value' );
  has QueueName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueue');
  has _returns => (isa => 'Aws::SQS::CreateQueueResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateQueueResult');  
}
package Aws::SQS::DeleteMessage {
  use Moose;
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessage');
  has _returns => (isa => 'Aws::SQS::DeleteMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteMessageResult');  
}
package Aws::SQS::DeleteMessageBatch {
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::SQS::DeleteMessageBatchRequestEntry]', traits => ['NameInRequest'], request_name => 'DeleteMessageBatchRequestEntry' , required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatch');
  has _returns => (isa => 'Aws::SQS::DeleteMessageBatchResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatchResult');  
}
package Aws::SQS::DeleteQueue {
  use Moose;
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteQueue');
  has _returns => (isa => 'Aws::SQS::DeleteQueueResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteQueueResult');  
}
package Aws::SQS::GetQueueAttributes {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AttributeName' );
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueAttributes');
  has _returns => (isa => 'Aws::SQS::GetQueueAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetQueueAttributesResult');  
}
package Aws::SQS::GetQueueUrl {
  use Moose;
  has QueueName => (is => 'ro', isa => 'Str', required => 1);
  has QueueOwnerAWSAccountId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueUrl');
  has _returns => (isa => 'Aws::SQS::GetQueueUrlResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetQueueUrlResult');  
}
package Aws::SQS::ListDeadLetterSourceQueues {
  use Moose;
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeadLetterSourceQueues');
  has _returns => (isa => 'Aws::SQS::ListDeadLetterSourceQueuesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListDeadLetterSourceQueuesResult');  
}
package Aws::SQS::ListQueues {
  use Moose;
  has QueueNamePrefix => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueues');
  has _returns => (isa => 'Aws::SQS::ListQueuesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListQueuesResult');  
}
package Aws::SQS::ReceiveMessage {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AttributeName' );
  has MaxNumberOfMessages => (is => 'ro', isa => 'Int');
  has MessageAttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'MessageAttributeName' );
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
  has WaitTimeSeconds => (is => 'ro', isa => 'Int');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ReceiveMessage');
  has _returns => (isa => 'Aws::SQS::ReceiveMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ReceiveMessageResult');  
}
package Aws::SQS::RemovePermission {
  use Moose;
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  has _returns => (isa => 'Aws::SQS::RemovePermissionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RemovePermissionResult');  
}
package Aws::SQS::SendMessage {
  use Moose;
  has DelaySeconds => (is => 'ro', isa => 'Int');
  has MessageAttributes => (is => 'ro', isa => 'Aws::SQS::MessageAttributeMap', traits => ['NameInRequest'], request_name => 'MessageAttribute' , traits => ['NameInRequest'], request_name => 'Value' );
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessage');
  has _returns => (isa => 'Aws::SQS::SendMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendMessageResult');  
}
package Aws::SQS::SendMessageBatch {
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::SQS::SendMessageBatchRequestEntry]', traits => ['NameInRequest'], request_name => 'SendMessageBatchRequestEntry' , required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessageBatch');
  has _returns => (isa => 'Aws::SQS::SendMessageBatchResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SendMessageBatchResult');  
}
package Aws::SQS::SetQueueAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap', traits => ['NameInRequest'], request_name => 'Attribute' , traits => ['NameInRequest'], request_name => 'Value' , required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetQueueAttributes');
  has _returns => (isa => 'Aws::SQS::SetQueueAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetQueueAttributesResult');  
}

package Aws::SQS::ChangeMessageVisibilityBatchResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Failed => (is => 'ro', isa => 'ArrayRef[Aws::SQS::BatchResultErrorEntry]', traits => ['Unwrapped'], xmlname => 'BatchResultErrorEntry', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Aws::SQS::ChangeMessageVisibilityBatchResultEntry]', traits => ['Unwrapped'], xmlname => 'ChangeMessageVisibilityBatchResultEntry', required => 1);

}
package Aws::SQS::CreateQueueResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has QueueUrl => (is => 'ro', isa => 'Str');

}
package Aws::SQS::DeleteMessageBatchResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Failed => (is => 'ro', isa => 'ArrayRef[Aws::SQS::BatchResultErrorEntry]', traits => ['Unwrapped'], xmlname => 'BatchResultErrorEntry', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Aws::SQS::DeleteMessageBatchResultEntry]', traits => ['Unwrapped'], xmlname => 'DeleteMessageBatchResultEntry', required => 1);

}
package Aws::SQS::GetQueueAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap', traits => ['Unwrapped'], xmlname => 'Value', traits => ['Unwrapped'], xmlname => 'Attribute');

}
package Aws::SQS::GetQueueUrlResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has QueueUrl => (is => 'ro', isa => 'Str');

}
package Aws::SQS::ListDeadLetterSourceQueuesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has queueUrls => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'QueueUrl', required => 1);

}
package Aws::SQS::ListQueuesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has QueueUrls => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'QueueUrl');

}
package Aws::SQS::ReceiveMessageResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Messages => (is => 'ro', isa => 'ArrayRef[Aws::SQS::Message]', traits => ['Unwrapped'], xmlname => 'Message');

}
package Aws::SQS::SendMessageResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has MD5OfMessageAttributes => (is => 'ro', isa => 'Str');
  has MD5OfMessageBody => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');

}
package Aws::SQS::SendMessageBatchResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Failed => (is => 'ro', isa => 'ArrayRef[Aws::SQS::BatchResultErrorEntry]', traits => ['Unwrapped'], xmlname => 'BatchResultErrorEntry', required => 1);
  has Successful => (is => 'ro', isa => 'ArrayRef[Aws::SQS::SendMessageBatchResultEntry]', traits => ['Unwrapped'], xmlname => 'SendMessageBatchResultEntry', required => 1);

}

package Aws::SQS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'sqs');
  has version => (is => 'ro', isa => 'Str', default => '2012-11-05');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '1');
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub AddPermission {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::AddPermission', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ChangeMessageVisibility {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::ChangeMessageVisibility', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub ChangeMessageVisibilityBatch {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::ChangeMessageVisibilityBatch', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::ChangeMessageVisibilityBatchResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateQueue {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::CreateQueue', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::CreateQueueResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteMessage {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::DeleteMessage', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteMessageBatch {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::DeleteMessageBatch', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::DeleteMessageBatchResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteQueue {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::DeleteQueue', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub GetQueueAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::GetQueueAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::GetQueueAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetQueueUrl {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::GetQueueUrl', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::GetQueueUrlResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListDeadLetterSourceQueues {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::ListDeadLetterSourceQueues', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::ListDeadLetterSourceQueuesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListQueues {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::ListQueues', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::ListQueuesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ReceiveMessage {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::ReceiveMessage', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::ReceiveMessageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RemovePermission {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::RemovePermission', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub SendMessage {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::SendMessage', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::SendMessageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SendMessageBatch {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::SendMessageBatch', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SQS::SendMessageBatchResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SetQueueAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::SQS::SetQueueAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
}
