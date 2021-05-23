
package Paws::ECRPublic::PutImageResponse;
  use Moose;
  has Image => (is => 'ro', isa => 'Paws::ECRPublic::Image', traits => ['NameInRequest'], request_name => 'image' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::PutImageResponse

=head1 ATTRIBUTES


=head2 Image => L<Paws::ECRPublic::Image>

Details of the image uploaded.


=head2 _request_id => Str


=cut

1;