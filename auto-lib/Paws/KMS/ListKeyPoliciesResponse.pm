
package Paws::KMS::ListKeyPoliciesResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Truncated => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListKeyPoliciesResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

When C<Truncated> is true, this value is present and contains the value
to use for the C<Marker> parameter in a subsequent pagination request.



=head2 PolicyNames => ArrayRef[Str|Undef]

A list of policy names. Currently, there is only one policy and it is
named "Default".



=head2 Truncated => Bool

A flag that indicates whether there are more items in the list. If your
results were truncated, you can use the C<Marker> parameter to make a
subsequent pagination request to retrieve more items in the list.




=cut

1;