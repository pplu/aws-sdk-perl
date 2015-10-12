package Paws::ECS::Service;
  use Moose;
  has clusterArn => (is => 'ro', isa => 'Str');
  has deployments => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Deployment]');
  has desiredCount => (is => 'ro', isa => 'Int');
  has events => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceEvent]');
  has loadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::LoadBalancer]');
  has pendingCount => (is => 'ro', isa => 'Int');
  has roleArn => (is => 'ro', isa => 'Str');
  has runningCount => (is => 'ro', isa => 'Int');
  has serviceArn => (is => 'ro', isa => 'Str');
  has serviceName => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str');
  has taskDefinition => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Service

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Service object:

  $service_obj->Method(Att1 => { clusterArn => $value, ..., taskDefinition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Service object:

  $result = $service_obj->Method(...);
  $result->Att1->clusterArn

=head1 ATTRIBUTES

=head2 clusterArn => Str

  The Amazon Resource Name (ARN) of the of the cluster that hosts the
service.

=head2 deployments => ArrayRef[Paws::ECS::Deployment]

  The current state of deployments for the service.

=head2 desiredCount => Int

  The desired number of instantiations of the task definition to keep
running on the service. This value is specified when the service is
created with CreateService, and it can be modified with UpdateService.

=head2 events => ArrayRef[Paws::ECS::ServiceEvent]

  The event stream for your service. A maximum of 100 of the latest
events are displayed.

=head2 loadBalancers => ArrayRef[Paws::ECS::LoadBalancer]

  A list of load balancer objects, containing the load balancer name, the
container name (as it appears in a container definition), and the
container port to access from the load balancer.

=head2 pendingCount => Int

  The number of tasks in the cluster that are in the C<PENDING> state.

=head2 roleArn => Str

  The Amazon Resource Name (ARN) of the IAM role associated with the
service that allows the Amazon ECS container agent to register
container instances with a load balancer.

=head2 runningCount => Int

  The number of tasks in the cluster that are in the C<RUNNING> state.

=head2 serviceArn => Str

  The Amazon Resource Name (ARN) that identifies the service. The ARN
contains the C<arn:aws:ecs> namespace, followed by the region of the
service, the AWS account ID of the service owner, the C<service>
namespace, and then the service name. For example,
arn:aws:ecs:I<region>:I<012345678910>:service/I<my-service>.

=head2 serviceName => Str

  A user-generated string that you can use to identify your service.

=head2 status => Str

  The status of the service. The valid values are C<ACTIVE>, C<DRAINING>,
or C<INACTIVE>.

=head2 taskDefinition => Str

  The task definition to use for tasks in the service. This value is
specified when the service is created with CreateService, and it can be
modified with UpdateService.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

