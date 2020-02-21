package Paws::ECS::ContainerDependency;
  use Moose;
  has Condition => (is => 'ro', isa => 'Str', request_name => 'condition', traits => ['NameInRequest'], required => 1);
  has ContainerName => (is => 'ro', isa => 'Str', request_name => 'containerName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ContainerDependency

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ContainerDependency object:

  $service_obj->Method(Att1 => { Condition => $value, ..., ContainerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ContainerDependency object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

The dependencies defined for container startup and shutdown. A
container can contain multiple dependencies. When a dependency is
defined for container startup, for container shutdown it is reversed.

Your Amazon ECS container instances require at least version 1.26.0 of
the container agent to enable container dependencies. However, we
recommend using the latest container agent version. For information
about checking your agent version and updating to the latest version,
see Updating the Amazon ECS Container Agent
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html)
in the I<Amazon Elastic Container Service Developer Guide>. If you are
using an Amazon ECS-optimized Linux AMI, your instance needs at least
version 1.26.0-1 of the C<ecs-init> package. If your container
instances are launched from version C<20190301> or later, then they
contain the required versions of the container agent and C<ecs-init>.
For more information, see Amazon ECS-optimized Linux AMI
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html)
in the I<Amazon Elastic Container Service Developer Guide>.

For tasks using the Fargate launch type, this parameter requires that
the task or service uses platform version 1.3.0 or later.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Condition => Str

  The dependency condition of the container. The following are the
available conditions and their behavior:

=over

=item *

C<START> - This condition emulates the behavior of links and volumes
today. It validates that a dependent container is started before
permitting other containers to start.

=item *

C<COMPLETE> - This condition validates that a dependent container runs
to completion (exits) before permitting other containers to start. This
can be useful for nonessential containers that run a script and then
exit.

=item *

C<SUCCESS> - This condition is the same as C<COMPLETE>, but it also
requires that the container exits with a C<zero> status.

=item *

C<HEALTHY> - This condition validates that the dependent container
passes its Docker health check before permitting other containers to
start. This requires that the dependent container has health checks
configured. This condition is confirmed only at task startup.

=back



=head2 B<REQUIRED> ContainerName => Str

  The name of a container.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

