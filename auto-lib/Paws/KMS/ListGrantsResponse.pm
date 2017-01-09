
package Paws::KMS::ListGrantsResponse;
  use Moose;
  has Grants => (is => 'ro', isa => 'ArrayRef[Paws::KMS::GrantListEntry]');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Truncated => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListGrantsResponse

=head1 ATTRIBUTES


=head2 Grants => ArrayRef[L<Paws::KMS::GrantListEntry>]

A list of grants.


=head2 NextMarker => Str

When C<Truncated> is true, this value is present and contains the value
to use for the C<Marker> parameter in a subsequent pagination request.


=head2 Truncated => Bool

A flag that indicates whether there are more items in the list. If your
results were truncated, you can use the C<Marker> parameter to make a
subsequent pagination request to retrieve more items in the list.


=head2 _request_id => Str


=cut

1;