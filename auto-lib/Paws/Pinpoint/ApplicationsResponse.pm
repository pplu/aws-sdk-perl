
package Paws::Pinpoint::ApplicationsResponse;
  use Moose;
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::ApplicationResponse]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ApplicationsResponse

=head1 ATTRIBUTES


=head2 Item => ArrayRef[L<Paws::Pinpoint::ApplicationResponse>]

An array of responses, one for each application that was returned.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

