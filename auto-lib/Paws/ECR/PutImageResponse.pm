
package Paws::ECR::PutImageResponse;
  use Moose;
  has Image => (is => 'ro', isa => 'Paws::ECR::Image', traits => ['Unwrapped'], xmlname => 'image' );


### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutImageResponse

=head1 ATTRIBUTES


=head2 Image => L<Paws::ECR::Image>

  Details of the image uploaded.


=cut

1;