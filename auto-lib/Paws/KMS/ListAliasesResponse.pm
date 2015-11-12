
package Paws::KMS::ListAliasesResponse;
  use Moose;
  has Aliases => (is => 'ro', isa => 'ArrayRef[Paws::KMS::AliasListEntry]');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Truncated => (is => 'ro', isa => 'Bool');


### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListAliasesResponse

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[L<Paws::KMS::AliasListEntry>]

  A list of key aliases in the user's account.

=head2 NextMarker => Str

  When C<Truncated> is true, this value is present and contains the value
to use for the C<Marker> parameter in a subsequent pagination request.

=head2 Truncated => Bool

  A flag that indicates whether there are more items in the list. If your
results were truncated, you can use the C<Marker> parameter to make a
subsequent pagination request to retrieve more items in the list.


=cut

1;