# Generated by default/object.tt
package Paws::CloudWatchEvents::EcsParameters;
  use Moose;
  has CapacityProviderStrategy => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::CapacityProviderStrategyItem]');
  has EnableECSManagedTags => (is => 'ro', isa => 'Bool');
  has EnableExecuteCommand => (is => 'ro', isa => 'Bool');
  has Group => (is => 'ro', isa => 'Str');
  has LaunchType => (is => 'ro', isa => 'Str');
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::CloudWatchEvents::NetworkConfiguration');
  has PlacementConstraints => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::PlacementConstraint]');
  has PlacementStrategy => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::PlacementStrategy]');
  has PlatformVersion => (is => 'ro', isa => 'Str');
  has PropagateTags => (is => 'ro', isa => 'Str');
  has ReferenceId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Tag]');
  has TaskCount => (is => 'ro', isa => 'Int');
  has TaskDefinitionArn => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::EcsParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::EcsParameters object:

  $service_obj->Method(Att1 => { CapacityProviderStrategy => $value, ..., TaskDefinitionArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::EcsParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityProviderStrategy

=head1 DESCRIPTION

The custom parameters to be used when the target is an Amazon ECS task.

=head1 ATTRIBUTES


=head2 CapacityProviderStrategy => ArrayRef[L<Paws::CloudWatchEvents::CapacityProviderStrategyItem>]

The capacity provider strategy to use for the task.

If a C<capacityProviderStrategy> is specified, the C<launchType>
parameter must be omitted. If no C<capacityProviderStrategy> or
launchType is specified, the C<defaultCapacityProviderStrategy> for the
cluster is used.


=head2 EnableECSManagedTags => Bool

Specifies whether to enable Amazon ECS managed tags for the task. For
more information, see Tagging Your Amazon ECS Resources
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html)
in the Amazon Elastic Container Service Developer Guide.


=head2 EnableExecuteCommand => Bool

Whether or not to enable the execute command functionality for the
containers in this task. If true, this enables execute command
functionality on all containers in the task.


=head2 Group => Str

Specifies an ECS task group for the task. The maximum length is 255
characters.


=head2 LaunchType => Str

Specifies the launch type on which your task is running. The launch
type that you specify here must match one of the launch type
(compatibilities) of the target task. The C<FARGATE> value is supported
only in the Regions where AWS Fargate with Amazon ECS is supported. For
more information, see AWS Fargate on Amazon ECS
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 NetworkConfiguration => L<Paws::CloudWatchEvents::NetworkConfiguration>

Use this structure if the ECS task uses the C<awsvpc> network mode.
This structure specifies the VPC subnets and security groups associated
with the task, and whether a public IP address is to be used. This
structure is required if C<LaunchType> is C<FARGATE> because the
C<awsvpc> mode is required for Fargate tasks.

If you specify C<NetworkConfiguration> when the target ECS task does
not use the C<awsvpc> network mode, the task fails.


=head2 PlacementConstraints => ArrayRef[L<Paws::CloudWatchEvents::PlacementConstraint>]

An array of placement constraint objects to use for the task. You can
specify up to 10 constraints per task (including constraints in the
task definition and those specified at runtime).


=head2 PlacementStrategy => ArrayRef[L<Paws::CloudWatchEvents::PlacementStrategy>]

The placement strategy objects to use for the task. You can specify a
maximum of five strategy rules per task.


=head2 PlatformVersion => Str

Specifies the platform version for the task. Specify only the numeric
portion of the platform version, such as C<1.1.0>.

This structure is used only if C<LaunchType> is C<FARGATE>. For more
information about valid platform versions, see AWS Fargate Platform
Versions
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 PropagateTags => Str

Specifies whether to propagate the tags from the task definition to the
task. If no value is specified, the tags are not propagated. Tags can
only be propagated to the task during task creation. To add tags to a
task after task creation, use the TagResource API action.


=head2 ReferenceId => Str

The reference ID to use for the task.


=head2 Tags => ArrayRef[L<Paws::CloudWatchEvents::Tag>]

The metadata that you apply to the task to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define. To learn more, see RunTask
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html#ECS-RunTask-request-tags)
in the Amazon ECS API Reference.


=head2 TaskCount => Int

The number of tasks to create based on C<TaskDefinition>. The default
is 1.


=head2 B<REQUIRED> TaskDefinitionArn => Str

The ARN of the task definition to use if the event target is an Amazon
ECS task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

