
package Paws::Pinpoint::ImportJobsResponse;
  use Moose;
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::ImportJobResponse]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ImportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Item => ArrayRef[L<Paws::Pinpoint::ImportJobResponse>]

An array of responses, one for each import job that's associated with
the application (Import Jobs resource) or segment (Segment Import Jobs
resource).


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

