
package Paws::ECS::CreateService;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has DeploymentConfiguration => (is => 'ro', isa => 'Paws::ECS::DeploymentConfiguration', traits => ['NameInRequest'], request_name => 'deploymentConfiguration' );
  has DesiredCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'desiredCount' , required => 1);
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::LoadBalancer]', traits => ['NameInRequest'], request_name => 'loadBalancers' );
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementConstraint]', traits => ['NameInRequest'], request_name => 'placementConstraints' );
  has PlacementStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlacementStrategy]', traits => ['NameInRequest'], request_name => 'placementStrategy' );
  has Role => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'role' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);
  has TaskDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskDefinition' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::CreateServiceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateService - Arguments for method CreateService on Paws::ECS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateService on the 
Amazon EC2 Container Service service. Use the attributes of this class
as arguments to method CreateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateService.

As an example:

  $service_obj->CreateService(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. Up to 32 ASCII characters are allowed.



=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster on
which to run your service. If you do not specify a cluster, the default
cluster is assumed.



=head2 DeploymentConfiguration => L<Paws::ECS::DeploymentConfiguration>

Optional deployment parameters that control how many tasks run during
the deployment and the ordering of stopping and starting tasks.



=head2 B<REQUIRED> DesiredCount => Int

The number of instantiations of the specified task definition to place
and keep running on your cluster.



=head2 LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]

A load balancer object representing the load balancer to use with your
service. Currently, you are limited to one load balancer or target
group per service. After you create a service, the load balancer name
or target group ARN, container name, and container port specified in
the service definition are immutable.

For Classic Load Balancers, this object must contain the load balancer
name, the container name (as it appears in a container definition), and
the container port to access from the load balancer. When a task from
this service is placed on a container instance, the container instance
is registered with the load balancer specified here.

For Application Load Balancers and Network Load Balancers, this object
must contain the load balancer target group ARN, the container name (as
it appears in a container definition), and the container port to access
from the load balancer. When a task from this service is placed on a
container instance, the container instance and port combination is
registered as a target in the target group specified here.



=head2 PlacementConstraints => ArrayRef[L<Paws::ECS::PlacementConstraint>]

An array of placement constraint objects to use for tasks in your
service. You can specify a maximum of 10 constraints per task (this
limit includes constraints in the task definition and those specified
at run time).



=head2 PlacementStrategy => ArrayRef[L<Paws::ECS::PlacementStrategy>]

The placement strategy objects to use for tasks in your service. You
can specify a maximum of 5 strategy rules per service.



=head2 Role => Str

The name or full Amazon Resource Name (ARN) of the IAM role that allows
Amazon ECS to make calls to your load balancer on your behalf. This
parameter is required if you are using a load balancer with your
service. If you specify the C<role> parameter, you must also specify a
load balancer object with the C<loadBalancers> parameter.

If your specified role has a path other than C</>, then you must either
specify the full role ARN (this is recommended) or prefix the role name
with the path. For example, if a role with the name C<bar> has a path
of C</foo/> then you would specify C</foo/bar> as the role name. For
more information, see Friendly Names and Paths
(http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names)
in the I<IAM User Guide>.



=head2 B<REQUIRED> ServiceName => Str

The name of your service. Up to 255 letters (uppercase and lowercase),
numbers, hyphens, and underscores are allowed. Service names must be
unique within a cluster, but you can have similarly named services in
multiple clusters within a region or across multiple regions.



=head2 B<REQUIRED> TaskDefinition => Str

The C<family> and C<revision> (C<family:revision>) or full Amazon
Resource Name (ARN) of the task definition to run in your service. If a
C<revision> is not specified, the latest C<ACTIVE> revision is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateService in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

