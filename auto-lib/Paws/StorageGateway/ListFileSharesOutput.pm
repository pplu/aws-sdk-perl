
package Paws::StorageGateway::ListFileSharesOutput;
  use Moose;
  has FileShareInfoList => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::FileShareInfo]');
  has Marker => (is => 'ro', isa => 'Str');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListFileSharesOutput

=head1 ATTRIBUTES


=head2 FileShareInfoList => ArrayRef[L<Paws::StorageGateway::FileShareInfo>]

An array of information about the file gateway's file shares.


=head2 Marker => Str

If the request includes C<Marker>, the response returns that value in
this field.


=head2 NextMarker => Str

If a value is present, there are more file shares to return. In a
subsequent request, use C<NextMarker> as the value for C<Marker> to
retrieve the next set of file shares.


=head2 _request_id => Str


=cut

1;