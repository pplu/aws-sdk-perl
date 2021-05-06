
package Paws::ImageBuilder::DeleteInfrastructureConfigurationResponse;
  use Moose;
  has InfrastructureConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'infrastructureConfigurationArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DeleteInfrastructureConfigurationResponse

=head1 ATTRIBUTES


=head2 InfrastructureConfigurationArn => Str

The Amazon Resource Name (ARN) of the infrastructure configuration that
was deleted.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

