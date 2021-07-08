
package Paws::Macie2::ListClassificationJobsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::JobSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListClassificationJobsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::Macie2::JobSummary>]

An array of objects, one for each job that meets the filter criteria
specified in the request.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

