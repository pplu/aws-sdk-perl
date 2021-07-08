
package Paws::CustomerProfiles::SearchProfilesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::Profile]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::SearchProfilesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::Profile>]

The list of SearchProfiles instances.


=head2 NextToken => Str

The pagination token from the previous SearchProfiles API call.


=head2 _request_id => Str


=cut

