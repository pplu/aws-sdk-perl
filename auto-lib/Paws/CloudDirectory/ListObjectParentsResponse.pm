
package Paws::CloudDirectory::ListObjectParentsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ParentLinks => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::ObjectIdentifierAndLinkNameTuple]');
  has Parents => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectIdentifierToLinkNameMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectParentsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 ParentLinks => ArrayRef[L<Paws::CloudDirectory::ObjectIdentifierAndLinkNameTuple>]

Returns a list of parent reference and LinkName Tuples.


=head2 Parents => L<Paws::CloudDirectory::ObjectIdentifierToLinkNameMap>

The parent structure, which is a map with key as the
C<ObjectIdentifier> and LinkName as the value.


=head2 _request_id => Str


=cut

