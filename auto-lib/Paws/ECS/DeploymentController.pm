package Paws::ECS::DeploymentController;
  use Moose;
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeploymentController

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::DeploymentController object:

  $service_obj->Method(Att1 => { Type => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::DeploymentController object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

The deployment controller to use for the service. For more information,
see Amazon ECS Deployment Types
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Type => Str

  The deployment controller type to use.

There are two deployment controller types available:

=over

=item ECS

The rolling update (C<ECS>) deployment type involves replacing the
current running version of the container with the latest version. The
number of containers Amazon ECS adds or removes from the service during
a rolling update is controlled by adjusting the minimum and maximum
number of healthy tasks allowed during a service deployment, as
specified in the DeploymentConfiguration.

=item CODE_DEPLOY

The blue/green (C<CODE_DEPLOY>) deployment type uses the blue/green
deployment model powered by AWS CodeDeploy, which allows you to verify
a new deployment of a service before sending production traffic to it.
For more information, see Amazon ECS Deployment Types
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

