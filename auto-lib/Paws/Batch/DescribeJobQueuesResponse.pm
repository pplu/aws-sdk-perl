
package Paws::Batch::DescribeJobQueuesResponse;
  use Moose;
  has JobQueues => (is => 'ro', isa => 'ArrayRef[Paws::Batch::JobQueueDetail]', traits => ['NameInRequest'], request_name => 'jobQueues');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeJobQueuesResponse

=head1 ATTRIBUTES


=head2 JobQueues => ArrayRef[L<Paws::Batch::JobQueueDetail>]

The list of job queues.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeJobQueues>
request. When the results of a C<DescribeJobQueues> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

