
package Paws::CloudDirectory::ListObjectChildrenResponse;
  use Moose;
  has Children => (is => 'ro', isa => 'Paws::CloudDirectory::LinkNameToObjectIdentifierMap');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectChildrenResponse

=head1 ATTRIBUTES


=head2 Children => L<Paws::CloudDirectory::LinkNameToObjectIdentifierMap>

Children structure, which is a map with key as the LinkName and
ObjectIdentifier as the value.


=head2 NextToken => Str

Token used for pagination.


=head2 _request_id => Str


=cut

