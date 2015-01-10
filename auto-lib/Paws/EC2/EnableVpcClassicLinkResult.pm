
package Paws::EC2::EnableVpcClassicLinkResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Return => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'return');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableVpcClassicLinkResult

=head1 ATTRIBUTES

=head2 Return => Bool

  

Returns C<true> if the request succeeds; otherwise, it returns an
error.











=cut

