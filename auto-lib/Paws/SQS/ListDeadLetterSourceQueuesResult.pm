
package Paws::SQS::ListDeadLetterSourceQueuesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has QueueUrls => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'QueueUrl', traits => ['NameInRequest',], required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ListDeadLetterSourceQueuesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token to include in the next request. Token value is C<null>
if there are no additional results to request, or if you did not set
C<MaxResults> in the request.


=head2 B<REQUIRED> QueueUrls => ArrayRef[Str|Undef]

A list of source queue URLs that have the C<RedrivePolicy> queue
attribute configured with a dead-letter queue.


=head2 _request_id => Str


=cut

