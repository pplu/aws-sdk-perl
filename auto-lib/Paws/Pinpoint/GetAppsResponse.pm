
package Paws::Pinpoint::GetAppsResponse;
  use Moose;
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::ApplicationResponse]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetAppsResponse

=head1 ATTRIBUTES


=head2 Item => ArrayRef[L<Paws::Pinpoint::ApplicationResponse>]

A list of applications


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

