package Paws::ECS::Service;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', request_name => 'clusterArn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DeploymentConfiguration => (is => 'ro', isa => 'Paws::ECS::DeploymentConfiguration', request_name => 'deploymentConfiguration', traits => ['NameInRequest']);
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Deployment]', request_name => 'deployments', traits => ['NameInRequest']);
  has DesiredCount => (is => 'ro', isa => 'Int', request_name => 'desiredCount', traits => ['NameInRequest']);
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceEvent]', request_name => 'events', traits => ['NameInRequest']);
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::LoadBalancer]', request_name => 'loadBalancers', traits => ['NameInRequest']);
  has PendingCount => (is => 'ro', isa => 'Int', request_name => 'pendingCount', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has RunningCount => (is => 'ro', isa => 'Int', request_name => 'runningCount', traits => ['NameInRequest']);
  has ServiceArn => (is => 'ro', isa => 'Str', request_name => 'serviceArn', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TaskDefinition => (is => 'ro', isa => 'Str', request_name => 'taskDefinition', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Service

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Service object:

  $service_obj->Method(Att1 => { ClusterArn => $value, ..., TaskDefinition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Service object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterArn

=head1 DESCRIPTION

Details on a service within a cluster

=head1 ATTRIBUTES


=head2 ClusterArn => Str

  The Amazon Resource Name (ARN) of the cluster that hosts the service.


=head2 CreatedAt => Str

  The Unix timestamp for when the service was created.


=head2 DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>

  Optional deployment parameters that control how many tasks run during
the deployment and the ordering of stopping and starting tasks.


=head2 Deployments => ArrayRef[L<Paws::ECS::Deployment>]

  The current state of deployments for the service.


=head2 DesiredCount => Int

  The desired number of instantiations of the task definition to keep
running on the service. This value is specified when the service is
created with CreateService, and it can be modified with UpdateService.


=head2 Events => ArrayRef[L<Paws::ECS::ServiceEvent>]

  The event stream for your service. A maximum of 100 of the latest
events are displayed.


=head2 LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]

  A list of Elastic Load Balancing load balancer objects, containing the
load balancer name, the container name (as it appears in a container
definition), and the container port to access from the load balancer.


=head2 PendingCount => Int

  The number of tasks in the cluster that are in the C<PENDING> state.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role associated with the
service that allows the Amazon ECS container agent to register
container instances with an Elastic Load Balancing load balancer.


=head2 RunningCount => Int

  The number of tasks in the cluster that are in the C<RUNNING> state.


=head2 ServiceArn => Str

  The Amazon Resource Name (ARN) that identifies the service. The ARN
contains the C<arn:aws:ecs> namespace, followed by the region of the
service, the AWS account ID of the service owner, the C<service>
namespace, and then the service name. For example,
C<arn:aws:ecs:I<region>:I<012345678910>:service/I<my-service> >.


=head2 ServiceName => Str

  The name of your service. Up to 255 letters (uppercase and lowercase),
numbers, hyphens, and underscores are allowed. Service names must be
unique within a cluster, but you can have similarly named services in
multiple clusters within a region or across multiple regions.


=head2 Status => Str

  The status of the service. The valid values are C<ACTIVE>, C<DRAINING>,
or C<INACTIVE>.


=head2 TaskDefinition => Str

  The task definition to use for tasks in the service. This value is
specified when the service is created with CreateService, and it can be
modified with UpdateService.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

