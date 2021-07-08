
package Paws::LookoutVision::CreateModelResponse;
  use Moose;
  has ModelMetadata => (is => 'ro', isa => 'Paws::LookoutVision::ModelMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::CreateModelResponse

=head1 ATTRIBUTES


=head2 ModelMetadata => L<Paws::LookoutVision::ModelMetadata>

The response from a call to C<CreateModel>.


=head2 _request_id => Str


=cut

