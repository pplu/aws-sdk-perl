
package Paws::ECRPublic::BatchCheckLayerAvailabilityResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECRPublic::LayerFailure]', traits => ['NameInRequest'], request_name => 'failures' );
  has Layers => (is => 'ro', isa => 'ArrayRef[Paws::ECRPublic::Layer]', traits => ['NameInRequest'], request_name => 'layers' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::BatchCheckLayerAvailabilityResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECRPublic::LayerFailure>]

Any failures associated with the call.


=head2 Layers => ArrayRef[L<Paws::ECRPublic::Layer>]

A list of image layer objects corresponding to the image layer
references in the request.


=head2 _request_id => Str


=cut

1;