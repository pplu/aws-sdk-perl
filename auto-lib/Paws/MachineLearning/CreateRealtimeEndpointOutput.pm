
package Paws::MachineLearning::CreateRealtimeEndpointOutput;
  use Moose;
  has MLModelId => (is => 'ro', isa => 'Str');
  has RealtimeEndpointInfo => (is => 'ro', isa => 'Paws::MachineLearning::RealtimeEndpointInfo');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::CreateRealtimeEndpointOutput

=head1 ATTRIBUTES


=head2 MLModelId => Str

A user-supplied ID that uniquely identifies the C<MLModel>. This value
should be identical to the value of the C<MLModelId> in the request.


=head2 RealtimeEndpointInfo => L<Paws::MachineLearning::RealtimeEndpointInfo>

The endpoint information of the C<MLModel>


=head2 _request_id => Str


=cut

1;