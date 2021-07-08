
package Paws::CustomerProfiles::ListProfileObjectsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::ListProfileObjectsItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListProfileObjectsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CustomerProfiles::ListProfileObjectsItem>]

The list of ListProfileObject instances.


=head2 NextToken => Str

The pagination token from the previous call to ListProfileObjects.


=head2 _request_id => Str


=cut

