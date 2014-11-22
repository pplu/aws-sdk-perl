
package Paws::SQS::SendMessage {
  use Moose;
  has DelaySeconds => (is => 'ro', isa => 'Int');
  has MessageAttributes => (is => 'ro', isa => 'Paws::SQS::MessageAttributeMap');
  has MessageBody => (is => 'ro', isa => 'Str', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::SendMessageResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendMessageResult');
}
1;