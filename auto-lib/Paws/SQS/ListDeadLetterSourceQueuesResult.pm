
package Paws::SQS::ListDeadLetterSourceQueuesResult;
  use Moose;
  has QueueUrls => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'QueueUrl', traits => ['Unwrapped',], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ListDeadLetterSourceQueuesResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueueUrls => ArrayRef[Str]

  A list of source queue URLs that have the RedrivePolicy queue attribute
configured with a dead letter queue.


=cut

