package Paws::CodeDeploy::DeploymentStyle;
  use Moose;
  has DeploymentOption => (is => 'ro', isa => 'Str', request_name => 'deploymentOption', traits => ['NameInRequest']);
  has DeploymentType => (is => 'ro', isa => 'Str', request_name => 'deploymentType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::DeploymentStyle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::DeploymentStyle object:

  $service_obj->Method(Att1 => { DeploymentOption => $value, ..., DeploymentType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::DeploymentStyle object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentOption

=head1 DESCRIPTION

Information about the type of deployment, either in-place or
blue/green, you want to run and whether to route deployment traffic
behind a load balancer.

=head1 ATTRIBUTES


=head2 DeploymentOption => Str

  Indicates whether to route deployment traffic behind a load balancer.


=head2 DeploymentType => Str

  Indicates whether to run an in-place deployment or a blue/green
deployment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

