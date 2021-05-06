
package Paws::SageMaker::CreateEndpointOutput;
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateEndpointOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Name (ARN) of the endpoint.


=head2 _request_id => Str


=cut

1;