
package Paws::ECS::CreateTaskSet;
  use Moose;
  has CapacityProviderStrategy => (is => 'ro', isa => 'ArrayRef[Paws::ECS::CapacityProviderStrategyItem]', traits => ['NameInRequest'], request_name => 'capacityProviderStrategy' );
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' , required => 1);
  has ExternalId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'externalId' );
  has LaunchType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchType' );
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ECS::LoadBalancer]', traits => ['NameInRequest'], request_name => 'loadBalancers' );
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', traits => ['NameInRequest'], request_name => 'networkConfiguration' );
  has PlatformVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformVersion' );
  has Scale => (is => 'ro', isa => 'Paws::ECS::Scale', traits => ['NameInRequest'], request_name => 'scale' );
  has Service => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'service' , required => 1);
  has ServiceRegistries => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ServiceRegistry]', traits => ['NameInRequest'], request_name => 'serviceRegistries' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TaskDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskDefinition' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTaskSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::CreateTaskSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateTaskSet - Arguments for method CreateTaskSet on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTaskSet on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method CreateTaskSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTaskSet.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $CreateTaskSetResponse = $ecs->CreateTaskSet(
      Cluster                  => 'MyString',
      Service                  => 'MyString',
      TaskDefinition           => 'MyString',
      CapacityProviderStrategy => [
        {
          CapacityProvider => 'MyString',
          Base             => 1,            # max: 100000; OPTIONAL
          Weight           => 1,            # max: 1000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ClientToken   => 'MyString',    # OPTIONAL
      ExternalId    => 'MyString',    # OPTIONAL
      LaunchType    => 'EC2',         # OPTIONAL
      LoadBalancers => [
        {
          ContainerName    => 'MyString',
          ContainerPort    => 1,            # OPTIONAL
          LoadBalancerName => 'MyString',
          TargetGroupArn   => 'MyString',
        },
        ...
      ],    # OPTIONAL
      NetworkConfiguration => {
        AwsvpcConfiguration => {
          Subnets        => [ 'MyString', ... ],
          AssignPublicIp => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          SecurityGroups => [ 'MyString', ... ],
        },    # OPTIONAL
      },    # OPTIONAL
      PlatformVersion => 'MyString',    # OPTIONAL
      Scale           => {
        Unit  => 'PERCENT',             # values: PERCENT; OPTIONAL
        Value => 1,                     # OPTIONAL
      },    # OPTIONAL
      ServiceRegistries => [
        {
          ContainerName => 'MyString',
          ContainerPort => 1,            # OPTIONAL
          Port          => 1,            # OPTIONAL
          RegistryArn   => 'MyString',
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $TaskSet = $CreateTaskSetResponse->TaskSet;

    # Returns a L<Paws::ECS::CreateTaskSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/CreateTaskSet>

=head1 ATTRIBUTES


=head2 CapacityProviderStrategy => ArrayRef[L<Paws::ECS::CapacityProviderStrategyItem>]

The capacity provider strategy to use for the task set.

A capacity provider strategy consists of one or more capacity providers
along with the C<base> and C<weight> to assign to them. A capacity
provider must be associated with the cluster to be used in a capacity
provider strategy. The PutClusterCapacityProviders API is used to
associate a capacity provider with a cluster. Only capacity providers
with an C<ACTIVE> or C<UPDATING> status can be used.

If a C<capacityProviderStrategy> is specified, the C<launchType>
parameter must be omitted. If no C<capacityProviderStrategy> or
C<launchType> is specified, the C<defaultCapacityProviderStrategy> for
the cluster is used.

If specifying a capacity provider that uses an Auto Scaling group, the
capacity provider must already be created. New capacity providers can
be created with the CreateCapacityProvider API operation.

To use a AWS Fargate capacity provider, specify either the C<FARGATE>
or C<FARGATE_SPOT> capacity providers. The AWS Fargate capacity
providers are available to all accounts and only need to be associated
with a cluster to be used.

The PutClusterCapacityProviders API operation is used to update the
list of available capacity providers for a cluster after the cluster is
created.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 32 ASCII characters are allowed.



=head2 B<REQUIRED> Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the service to create the task set in.



=head2 ExternalId => Str

An optional non-unique tag that identifies this task set in external
systems. If the task set is associated with a service discovery
registry, the tasks in this task set will have the
C<ECS_TASK_SET_EXTERNAL_ID> AWS Cloud Map attribute set to the provided
value.



=head2 LaunchType => Str

The launch type that new tasks in the task set will use. For more
information, see Amazon ECS Launch Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)
in the I<Amazon Elastic Container Service Developer Guide>.

If a C<launchType> is specified, the C<capacityProviderStrategy>
parameter must be omitted.

Valid values are: C<"EC2">, C<"FARGATE">

=head2 LoadBalancers => ArrayRef[L<Paws::ECS::LoadBalancer>]

A load balancer object representing the load balancer to use with the
task set. The supported load balancer types are either an Application
Load Balancer or a Network Load Balancer.



=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

An object representing the network configuration for a task set.



=head2 PlatformVersion => Str

The platform version that the tasks in the task set should use. A
platform version is specified only for tasks using the Fargate launch
type. If one isn't specified, the C<LATEST> platform version is used by
default.



=head2 Scale => L<Paws::ECS::Scale>

A floating-point percentage of the desired number of tasks to place and
keep running in the task set.



=head2 B<REQUIRED> Service => Str

The short name or full Amazon Resource Name (ARN) of the service to
create the task set in.



=head2 ServiceRegistries => ArrayRef[L<Paws::ECS::ServiceRegistry>]

The details of the service discovery registries to assign to this task
set. For more information, see Service Discovery
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html).



=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that you apply to the task set to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define. When a service is deleted, the tags are deleted as
well.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8

=item *

Maximum value length - 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for AWS
use. You cannot edit or delete tag keys or values with this prefix.
Tags with this prefix do not count against your tags per resource
limit.

=back




=head2 B<REQUIRED> TaskDefinition => Str

The task definition for the tasks in the task set to use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTaskSet in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

