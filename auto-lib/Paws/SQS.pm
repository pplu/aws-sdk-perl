
use Paws::API;


package Paws::SQS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'sqs');
  has version => (is => 'ro', isa => 'Str', default => '2012-11-05');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '1');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub AddPermission {
    my $self = shift;
    return $self->do_call('Paws::SQS::AddPermission', @_);
  }
  sub ChangeMessageVisibility {
    my $self = shift;
    return $self->do_call('Paws::SQS::ChangeMessageVisibility', @_);
  }
  sub ChangeMessageVisibilityBatch {
    my $self = shift;
    return $self->do_call('Paws::SQS::ChangeMessageVisibilityBatch', @_);
  }
  sub CreateQueue {
    my $self = shift;
    return $self->do_call('Paws::SQS::CreateQueue', @_);
  }
  sub DeleteMessage {
    my $self = shift;
    return $self->do_call('Paws::SQS::DeleteMessage', @_);
  }
  sub DeleteMessageBatch {
    my $self = shift;
    return $self->do_call('Paws::SQS::DeleteMessageBatch', @_);
  }
  sub DeleteQueue {
    my $self = shift;
    return $self->do_call('Paws::SQS::DeleteQueue', @_);
  }
  sub GetQueueAttributes {
    my $self = shift;
    return $self->do_call('Paws::SQS::GetQueueAttributes', @_);
  }
  sub GetQueueUrl {
    my $self = shift;
    return $self->do_call('Paws::SQS::GetQueueUrl', @_);
  }
  sub ListDeadLetterSourceQueues {
    my $self = shift;
    return $self->do_call('Paws::SQS::ListDeadLetterSourceQueues', @_);
  }
  sub ListQueues {
    my $self = shift;
    return $self->do_call('Paws::SQS::ListQueues', @_);
  }
  sub ReceiveMessage {
    my $self = shift;
    return $self->do_call('Paws::SQS::ReceiveMessage', @_);
  }
  sub RemovePermission {
    my $self = shift;
    return $self->do_call('Paws::SQS::RemovePermission', @_);
  }
  sub SendMessage {
    my $self = shift;
    return $self->do_call('Paws::SQS::SendMessage', @_);
  }
  sub SendMessageBatch {
    my $self = shift;
    return $self->do_call('Paws::SQS::SendMessageBatch', @_);
  }
  sub SetQueueAttributes {
    my $self = shift;
    return $self->do_call('Paws::SQS::SetQueueAttributes', @_);
  }
}
1;