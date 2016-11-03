
package Paws::EC2::EnableVpcClassicLinkResult;
  use Moose;
  has Return => (is => 'ro', isa => 'Bool', request_name => 'return', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableVpcClassicLinkResult

=head1 ATTRIBUTES


=head2 Return => Bool

Returns C<true> if the request succeeds; otherwise, it returns an
error.




=cut

