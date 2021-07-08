
package Paws::SQS::ListQueuesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has QueueUrls => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'QueueUrl', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ListQueuesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token to include in the next request. Token value is C<null>
if there are no additional results to request, or if you did not set
C<MaxResults> in the request.


=head2 QueueUrls => ArrayRef[Str|Undef]

A list of queue URLs, up to 1,000 entries, or the value of MaxResults
that you sent in the request.


=head2 _request_id => Str


=cut

