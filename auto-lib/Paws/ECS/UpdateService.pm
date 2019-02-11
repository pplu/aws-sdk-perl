
package Paws::ECS::UpdateService;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has DeploymentConfiguration => (is => 'ro', isa => 'Paws::ECS::DeploymentConfiguration', traits => ['NameInRequest'], request_name => 'deploymentConfiguration' );
  has DesiredCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'desiredCount' );
  has ForceNewDeployment => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'forceNewDeployment' );
  has HealthCheckGracePeriodSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'healthCheckGracePeriodSeconds' );
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', traits => ['NameInRequest'], request_name => 'networkConfiguration' );
  has PlatformVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformVersion' );
  has Service => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'service' , required => 1);
  has TaskDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskDefinition' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::UpdateServiceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateService - Arguments for method UpdateService on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateService on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method UpdateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateService.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To change the task definition used in a service
    # This example updates the my-http-service service to use the
    # amazon-ecs-sample task definition.
    my $UpdateServiceResponse = $ecs->UpdateService(
      {
        'Service'        => 'my-http-service',
        'TaskDefinition' => 'amazon-ecs-sample'
      }
    );

    # To change the number of tasks in a service
    # This example updates the desired count of the my-http-service service to
    # 10.
    my $UpdateServiceResponse = $ecs->UpdateService(
      {
        'DesiredCount' => 10,
        'Service'      => 'my-http-service'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/UpdateService>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
your service is running on. If you do not specify a cluster, the
default cluster is assumed.



=head2 DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>

Optional deployment parameters that control how many tasks run during
the deployment and the ordering of stopping and starting tasks.



=head2 DesiredCount => Int

The number of instantiations of the task to place and keep running in
your service.



=head2 ForceNewDeployment => Bool

Whether to force a new deployment of the service. Deployments are not
forced by default. You can use this option to trigger a new deployment
with no service definition changes. For example, you can update a
service's tasks to use a newer Docker image with the same image/tag
combination (C<my_image:latest>) or to roll Fargate tasks onto a newer
platform version.



=head2 HealthCheckGracePeriodSeconds => Int

The period of time, in seconds, that the Amazon ECS service scheduler
should ignore unhealthy Elastic Load Balancing target health checks
after a task has first started. This is only valid if your service is
configured to use a load balancer. If your service's tasks take a while
to start and respond to Elastic Load Balancing health checks, you can
specify a health check grace period of up to 1,800 seconds. During that
time, the ECS service scheduler ignores the Elastic Load Balancing
health check status. This grace period can prevent the ECS service
scheduler from marking tasks as unhealthy and stopping them before they
have time to come up.



=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

The network configuration for the service. This parameter is required
for task definitions that use the C<awsvpc> network mode to receive
their own elastic network interface, and it is not supported for other
network modes. For more information, see Task Networking
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
in the I<Amazon Elastic Container Service Developer Guide>.

Updating a service to add a subnet to a list of existing subnets does
not trigger a service deployment. For example, if your network
configuration change is to keep the existing subnets and simply add
another subnet to the network configuration, this does not trigger a
new service deployment.



=head2 PlatformVersion => Str

The platform version on which your tasks in the service are running. A
platform version is only specified for tasks using the Fargate launch
type. If one is not specified, the C<LATEST> platform version is used
by default. For more information, see AWS Fargate Platform Versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 B<REQUIRED> Service => Str

The name of the service to update.



=head2 TaskDefinition => Str

The C<family> and C<revision> (C<family:revision>) or full ARN of the
task definition to run in your service. If a C<revision> is not
specified, the latest C<ACTIVE> revision is used. If you modify the
task definition with C<UpdateService>, Amazon ECS spawns a task with
the new version of the task definition and then stops an old task after
the new version is running.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateService in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

