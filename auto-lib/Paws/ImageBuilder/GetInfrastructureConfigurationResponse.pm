
package Paws::ImageBuilder::GetInfrastructureConfigurationResponse;
  use Moose;
  has InfrastructureConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::InfrastructureConfiguration', traits => ['NameInRequest'], request_name => 'infrastructureConfiguration');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetInfrastructureConfigurationResponse

=head1 ATTRIBUTES


=head2 InfrastructureConfiguration => L<Paws::ImageBuilder::InfrastructureConfiguration>

The infrastructure configuration object.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

