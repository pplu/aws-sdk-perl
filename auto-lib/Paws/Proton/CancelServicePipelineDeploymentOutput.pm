
package Paws::Proton::CancelServicePipelineDeploymentOutput;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::Proton::ServicePipeline', traits => ['NameInRequest'], request_name => 'pipeline' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CancelServicePipelineDeploymentOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Pipeline => L<Paws::Proton::ServicePipeline>

The service pipeline detail data that's returned by AWS Proton.


=head2 _request_id => Str


=cut

1;