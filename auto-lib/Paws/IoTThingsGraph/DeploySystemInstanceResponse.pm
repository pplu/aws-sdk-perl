
package Paws::IoTThingsGraph::DeploySystemInstanceResponse;
  use Moose;
  has GreengrassDeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'greengrassDeploymentId' );
  has Summary => (is => 'ro', isa => 'Paws::IoTThingsGraph::SystemInstanceSummary', traits => ['NameInRequest'], request_name => 'summary' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::DeploySystemInstanceResponse

=head1 ATTRIBUTES


=head2 GreengrassDeploymentId => Str

The ID of the Greengrass deployment used to deploy the system instance.


=head2 B<REQUIRED> Summary => L<Paws::IoTThingsGraph::SystemInstanceSummary>

An object that contains summary information about a system instance
that was deployed.


=head2 _request_id => Str


=cut

1;