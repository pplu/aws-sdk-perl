package Paws::ECS::LoadBalancer;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str', request_name => 'containerName', traits => ['NameInRequest']);
  has ContainerPort => (is => 'ro', isa => 'Int', request_name => 'containerPort', traits => ['NameInRequest']);
  has LoadBalancerName => (is => 'ro', isa => 'Str', request_name => 'loadBalancerName', traits => ['NameInRequest']);
  has TargetGroupArn => (is => 'ro', isa => 'Str', request_name => 'targetGroupArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::LoadBalancer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::LoadBalancer object:

  $service_obj->Method(Att1 => { ContainerName => $value, ..., TargetGroupArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::LoadBalancer object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerName

=head1 DESCRIPTION

Details on a load balancer that is used with a service.

If the service is using the C<ECS> deployment controller, you are
limited to one load balancer or target group.

If the service is using the C<CODE_DEPLOY> deployment controller, the
service is required to use either an Application Load Balancer or
Network Load Balancer. When you are creating an AWS CodeDeploy
deployment group, you specify two target groups (referred to as a
C<targetGroupPair>). Each target group binds to a separate task set in
the deployment. The load balancer can also have up to two listeners, a
required listener for production traffic and an optional listener that
allows you to test new revisions of the service before routing
production traffic to it.

Services with tasks that use the C<awsvpc> network mode (for example,
those with the Fargate launch type) only support Application Load
Balancers and Network Load Balancers. Classic Load Balancers are not
supported. Also, when you create any target groups for these services,
you must choose C<ip> as the target type, not C<instance>. Tasks that
use the C<awsvpc> network mode are associated with an elastic network
interface, not an Amazon EC2 instance.

=head1 ATTRIBUTES


=head2 ContainerName => Str

  The name of the container (as it appears in a container definition) to
associate with the load balancer.


=head2 ContainerPort => Int

  The port on the container to associate with the load balancer. This
port must correspond to a C<containerPort> in the service's task
definition. Your container instances must allow ingress traffic on the
C<hostPort> of the port mapping.


=head2 LoadBalancerName => Str

  The name of a load balancer.


=head2 TargetGroupArn => Str

  The full Amazon Resource Name (ARN) of the Elastic Load Balancing
target group or groups associated with a service. For services using
the C<ECS> deployment controller, you are limited to one target group.
For services using the C<CODE_DEPLOY> deployment controller, you are
required to define two target groups for the load balancer.

If your service's task definition uses the C<awsvpc> network mode
(which is required for the Fargate launch type), you must choose C<ip>
as the target type, not C<instance>, because tasks that use the
C<awsvpc> network mode are associated with an elastic network
interface, not an Amazon EC2 instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

