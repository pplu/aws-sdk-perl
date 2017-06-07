
package Paws::CloudDirectory::ListObjectParentPathsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PathToObjectIdentifiersList => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::PathToObjectIdentifiers]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectParentPathsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token.


=head2 PathToObjectIdentifiersList => ArrayRef[L<Paws::CloudDirectory::PathToObjectIdentifiers>]

Returns the path to the C<ObjectIdentifiers> that are associated with
the directory.


=head2 _request_id => Str


=cut

