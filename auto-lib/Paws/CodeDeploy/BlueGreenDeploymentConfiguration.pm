# Generated from default/object.tt
package Paws::CodeDeploy::BlueGreenDeploymentConfiguration;
  use Moo;
  use Types::Standard qw//;
  use Paws::CodeDeploy::Types qw/CodeDeploy_BlueInstanceTerminationOption CodeDeploy_GreenFleetProvisioningOption CodeDeploy_DeploymentReadyOption/;
  has DeploymentReadyOption => (is => 'ro', isa => CodeDeploy_DeploymentReadyOption);
  has GreenFleetProvisioningOption => (is => 'ro', isa => CodeDeploy_GreenFleetProvisioningOption);
  has TerminateBlueInstancesOnDeploymentSuccess => (is => 'ro', isa => CodeDeploy_BlueInstanceTerminationOption);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentReadyOption' => {
                                            'class' => 'Paws::CodeDeploy::DeploymentReadyOption',
                                            'type' => 'CodeDeploy_DeploymentReadyOption'
                                          },
               'TerminateBlueInstancesOnDeploymentSuccess' => {
                                                                'class' => 'Paws::CodeDeploy::BlueInstanceTerminationOption',
                                                                'type' => 'CodeDeploy_BlueInstanceTerminationOption'
                                                              },
               'GreenFleetProvisioningOption' => {
                                                   'class' => 'Paws::CodeDeploy::GreenFleetProvisioningOption',
                                                   'type' => 'CodeDeploy_GreenFleetProvisioningOption'
                                                 }
             },
  'NameInRequest' => {
                       'DeploymentReadyOption' => 'deploymentReadyOption',
                       'TerminateBlueInstancesOnDeploymentSuccess' => 'terminateBlueInstancesOnDeploymentSuccess',
                       'GreenFleetProvisioningOption' => 'greenFleetProvisioningOption'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BlueGreenDeploymentConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::BlueGreenDeploymentConfiguration object:

  $service_obj->Method(Att1 => { DeploymentReadyOption => $value, ..., TerminateBlueInstancesOnDeploymentSuccess => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::BlueGreenDeploymentConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentReadyOption

=head1 DESCRIPTION

Information about blue/green deployment options for a deployment group.

=head1 ATTRIBUTES


=head2 DeploymentReadyOption => CodeDeploy_DeploymentReadyOption

  Information about the action to take when newly provisioned instances
are ready to receive traffic in a blue/green deployment.


=head2 GreenFleetProvisioningOption => CodeDeploy_GreenFleetProvisioningOption

  Information about how instances are provisioned for a replacement
environment in a blue/green deployment.


=head2 TerminateBlueInstancesOnDeploymentSuccess => CodeDeploy_BlueInstanceTerminationOption

  Information about whether to terminate instances in the original fleet
during a blue/green deployment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

