
package Paws::SageMaker::CreateEndpointConfigOutput;
  use Moose;
  has EndpointConfigArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateEndpointConfigOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointConfigArn => Str

The Amazon Resource Name (ARN) of the endpoint configuration.


=head2 _request_id => Str


=cut

1;