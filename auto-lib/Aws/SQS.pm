
use AWS::API;


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