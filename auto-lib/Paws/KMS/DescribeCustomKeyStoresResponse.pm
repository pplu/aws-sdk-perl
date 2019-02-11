
package Paws::KMS::DescribeCustomKeyStoresResponse;
  use Moose;
  has CustomKeyStores => (is => 'ro', isa => 'ArrayRef[Paws::KMS::CustomKeyStoresListEntry]');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Truncated => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DescribeCustomKeyStoresResponse

=head1 ATTRIBUTES


=head2 CustomKeyStores => ArrayRef[L<Paws::KMS::CustomKeyStoresListEntry>]

Contains metadata about each custom key store.


=head2 NextMarker => Str

When C<Truncated> is true, this element is present and contains the
value to use for the C<Marker> parameter in a subsequent request.


=head2 Truncated => Bool

A flag that indicates whether there are more items in the list. When
this value is true, the list in this response is truncated. To get more
items, pass the value of the C<NextMarker> element in this response to
the C<Marker> parameter in a subsequent request.


=head2 _request_id => Str


=cut

1;