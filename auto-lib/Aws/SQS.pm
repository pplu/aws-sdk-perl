
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
  with ('AWS::API::ResultParser');
  has Code => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str');
  has SenderFault => (is => 'ro', isa => 'Bool', required => 1);
}

package Aws::SQS::ChangeMessageVisibilityBatchRequestEntry {
  use Moose;
  with ('AWS::API::ResultParser');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
}

package Aws::SQS::ChangeMessageVisibilityBatchResultEntry {
  use Moose;
  with ('AWS::API::ResultParser');
  has Id => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SQS::DeleteMessageBatchRequestEntry {
  use Moose;
  with ('AWS::API::ResultParser');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SQS::DeleteMessageBatchResultEntry {
  use Moose;
  with ('AWS::API::ResultParser');
  has Id => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SQS::Message {
  use Moose;
  with ('AWS::API::ResultParser');
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
  with ('AWS::API::ResultParser');
  has DelaySeconds => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has MessageAttributes => (is => 'ro', isa => 'Aws::SQS::MessageAttributeMap', traits => ['Unwrapped'], xmlname => 'MessageAttribute');
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SQS::SendMessageBatchResultEntry {
  use Moose;
  with ('AWS::API::ResultParser');
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SQS::ChangeMessageVisibility {
  use Moose;
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibility');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SQS::ChangeMessageVisibilityBatch {
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::SQS::ChangeMessageVisibilityBatchRequestEntry]', traits => ['NameInRequest'], request_name => 'ChangeMessageVisibilityBatchRequestEntry' , required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibilityBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::ChangeMessageVisibilityBatchResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ChangeMessageVisibilityBatchResult');
}
package Aws::SQS::CreateQueue {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap', traits => ['NameInRequest'], request_name => 'Attribute' , traits => ['NameInRequest'], request_name => 'Value' );
  has QueueName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::CreateQueueResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateQueueResult');
}
package Aws::SQS::DeleteMessage {
  use Moose;
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has ReceiptHandle => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessage');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SQS::DeleteMessageBatch {
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::SQS::DeleteMessageBatchRequestEntry]', traits => ['NameInRequest'], request_name => 'DeleteMessageBatchRequestEntry' , required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::DeleteMessageBatchResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatchResult');
}
package Aws::SQS::DeleteQueue {
  use Moose;
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteQueue');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SQS::GetQueueAttributes {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AttributeName' );
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::GetQueueAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetQueueAttributesResult');
}
package Aws::SQS::GetQueueUrl {
  use Moose;
  has QueueName => (is => 'ro', isa => 'Str', required => 1);
  has QueueOwnerAWSAccountId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueUrl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::GetQueueUrlResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetQueueUrlResult');
}
package Aws::SQS::ListDeadLetterSourceQueues {
  use Moose;
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeadLetterSourceQueues');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::ListDeadLetterSourceQueuesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListDeadLetterSourceQueuesResult');
}
package Aws::SQS::ListQueues {
  use Moose;
  has QueueNamePrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueues');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::ListQueuesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListQueuesResult');
}
package Aws::SQS::ReceiveMessage {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AttributeName' );
  has MaxNumberOfMessages => (is => 'ro', isa => 'Int');
  has MessageAttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'MessageAttributeName' );
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
  has WaitTimeSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReceiveMessage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::ReceiveMessageResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ReceiveMessageResult');
}
package Aws::SQS::RemovePermission {
  use Moose;
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SQS::SendMessage {
  use Moose;
  has DelaySeconds => (is => 'ro', isa => 'Int');
  has MessageAttributes => (is => 'ro', isa => 'Aws::SQS::MessageAttributeMap', traits => ['NameInRequest'], request_name => 'MessageAttribute' , traits => ['NameInRequest'], request_name => 'Value' );
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::SendMessageResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendMessageResult');
}
package Aws::SQS::SendMessageBatch {
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::SQS::SendMessageBatchRequestEntry]', traits => ['NameInRequest'], request_name => 'SendMessageBatchRequestEntry' , required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessageBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::SendMessageBatchResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendMessageBatchResult');
}
package Aws::SQS::SetQueueAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap', traits => ['NameInRequest'], request_name => 'Attribute' , traits => ['NameInRequest'], request_name => 'Value' , required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetQueueAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
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

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AddPermission {
    my $self = shift;
    return $self->do_call('Aws::SQS::AddPermission', @_);
  }
  sub ChangeMessageVisibility {
    my $self = shift;
    return $self->do_call('Aws::SQS::ChangeMessageVisibility', @_);
  }
  sub ChangeMessageVisibilityBatch {
    my $self = shift;
    return $self->do_call('Aws::SQS::ChangeMessageVisibilityBatch', @_);
  }
  sub CreateQueue {
    my $self = shift;
    return $self->do_call('Aws::SQS::CreateQueue', @_);
  }
  sub DeleteMessage {
    my $self = shift;
    return $self->do_call('Aws::SQS::DeleteMessage', @_);
  }
  sub DeleteMessageBatch {
    my $self = shift;
    return $self->do_call('Aws::SQS::DeleteMessageBatch', @_);
  }
  sub DeleteQueue {
    my $self = shift;
    return $self->do_call('Aws::SQS::DeleteQueue', @_);
  }
  sub GetQueueAttributes {
    my $self = shift;
    return $self->do_call('Aws::SQS::GetQueueAttributes', @_);
  }
  sub GetQueueUrl {
    my $self = shift;
    return $self->do_call('Aws::SQS::GetQueueUrl', @_);
  }
  sub ListDeadLetterSourceQueues {
    my $self = shift;
    return $self->do_call('Aws::SQS::ListDeadLetterSourceQueues', @_);
  }
  sub ListQueues {
    my $self = shift;
    return $self->do_call('Aws::SQS::ListQueues', @_);
  }
  sub ReceiveMessage {
    my $self = shift;
    return $self->do_call('Aws::SQS::ReceiveMessage', @_);
  }
  sub RemovePermission {
    my $self = shift;
    return $self->do_call('Aws::SQS::RemovePermission', @_);
  }
  sub SendMessage {
    my $self = shift;
    return $self->do_call('Aws::SQS::SendMessage', @_);
  }
  sub SendMessageBatch {
    my $self = shift;
    return $self->do_call('Aws::SQS::SendMessageBatch', @_);
  }
  sub SetQueueAttributes {
    my $self = shift;
    return $self->do_call('Aws::SQS::SetQueueAttributes', @_);
  }
}
1;
