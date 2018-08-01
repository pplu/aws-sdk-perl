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

Details on the load balancer or load balancers to use with a service or
task set.

=head1 ATTRIBUTES


=head2 ContainerName => Str

  The name of the container (as it appears in a container definition) to
associate with the load balancer.


=head2 ContainerPort => Int

  The port on the container to associate with the load balancer. This
port must correspond to a C<containerPort> in the task definition the
tasks in the service are using. For tasks that use the EC2 launch type,
the container instance they are launched on must allow ingress traffic
on the C<hostPort> of the port mapping.


=head2 LoadBalancerName => Str

  The name of the load balancer to associate with the Amazon ECS service
or task set.

A load balancer name is only specified when using a Classic Load
Balancer. If you are using an Application Load Balancer or a Network
Load Balancer this should be omitted.


=head2 TargetGroupArn => Str

  The full Amazon Resource Name (ARN) of the Elastic Load Balancing
target group or groups associated with a service or task set.

A target group ARN is only specified when using an Application Load
Balancer or Network Load Balancer. If you are using a Classic Load
Balancer this should be omitted.

For services using the C<ECS> deployment controller, you can specify
one or multiple target groups. For more information, see Registering
Multiple Target Groups with a Service
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html)
in the I<Amazon Elastic Container Service Developer Guide>.

For services using the C<CODE_DEPLOY> deployment controller, you are
required to define two target groups for the load balancer. For more
information, see Blue/Green Deployment with CodeDeploy
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-bluegreen.html)
in the I<Amazon Elastic Container Service Developer Guide>.

If your service's task definition uses the C<awsvpc> network mode
(which is required for the Fargate launch type), you must choose C<ip>
as the target type, not C<instance>, when creating your target groups
because tasks that use the C<awsvpc> network mode are associated with
an elastic network interface, not an Amazon EC2 instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

