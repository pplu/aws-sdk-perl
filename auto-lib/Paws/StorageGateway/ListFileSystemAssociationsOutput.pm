
package Paws::StorageGateway::ListFileSystemAssociationsOutput;
  use Moose;
  has FileSystemAssociationSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::FileSystemAssociationSummary]');
  has Marker => (is => 'ro', isa => 'Str');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListFileSystemAssociationsOutput

=head1 ATTRIBUTES


=head2 FileSystemAssociationSummaryList => ArrayRef[L<Paws::StorageGateway::FileSystemAssociationSummary>]

An array of information about the Amazon FSx gateway's file system
associations.


=head2 Marker => Str

If the request includes C<Marker>, the response returns that value in
this field.


=head2 NextMarker => Str

If a value is present, there are more file system associations to
return. In a subsequent request, use C<NextMarker> as the value for
C<Marker> to retrieve the next set of file system associations.


=head2 _request_id => Str


=cut

1;