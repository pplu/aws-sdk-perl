
package Paws::MTurk::ListWorkerBlocksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NumResults => (is => 'ro', isa => 'Int');
  has WorkerBlocks => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::WorkerBlock]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListWorkerBlocksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 NumResults => Int

The number of assignments on the page in the filtered results list,
equivalent to the number of assignments returned by this call.


=head2 WorkerBlocks => ArrayRef[L<Paws::MTurk::WorkerBlock>]

The list of WorkerBlocks, containing the collection of Worker IDs and
reasons for blocking.


=head2 _request_id => Str


=cut

1;