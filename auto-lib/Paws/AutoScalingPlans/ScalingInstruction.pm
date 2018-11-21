package Paws::AutoScalingPlans::ScalingInstruction;
  use Moose;
  has CustomizedLoadMetricSpecification => (is => 'ro', isa => 'Paws::AutoScalingPlans::CustomizedLoadMetricSpecification');
  has DisableDynamicScaling => (is => 'ro', isa => 'Bool');
  has MaxCapacity => (is => 'ro', isa => 'Int', required => 1);
  has MinCapacity => (is => 'ro', isa => 'Int', required => 1);
  has PredefinedLoadMetricSpecification => (is => 'ro', isa => 'Paws::AutoScalingPlans::PredefinedLoadMetricSpecification');
  has PredictiveScalingMaxCapacityBehavior => (is => 'ro', isa => 'Str');
  has PredictiveScalingMaxCapacityBuffer => (is => 'ro', isa => 'Int');
  has PredictiveScalingMode => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ScalingPolicyUpdateBehavior => (is => 'ro', isa => 'Str');
  has ScheduledActionBufferTime => (is => 'ro', isa => 'Int');
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
  has TargetTrackingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::TargetTrackingConfiguration]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::ScalingInstruction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScalingPlans::ScalingInstruction object:

  $service_obj->Method(Att1 => { CustomizedLoadMetricSpecification => $value, ..., TargetTrackingConfigurations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScalingPlans::ScalingInstruction object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomizedLoadMetricSpecification

=head1 DESCRIPTION

Describes a scaling instruction for a scalable resource.

The scaling instruction is used in combination with a scaling plan,
which is a set of instructions for configuring dynamic scaling and
predictive scaling for the scalable resources in your application. Each
scaling instruction applies to one resource.

AWS Auto Scaling creates target tracking scaling policies based on the
scaling instructions. Target tracking scaling policies adjust the
capacity of your scalable resource as required to maintain resource
utilization at the target value that you specified.

AWS Auto Scaling also configures predictive scaling for your Amazon EC2
Auto Scaling groups using a subset of parameters, including the load
metric, the scaling metric, the target value for the scaling metric,
the predictive scaling mode (forecast and scale or forecast only), and
the desired behavior when the forecast capacity exceeds the maximum
capacity of the resource. With predictive scaling, AWS Auto Scaling
generates forecasts with traffic predictions for the two days ahead and
schedules scaling actions that proactively add and remove resource
capacity to match the forecast.

For more information, see the AWS Auto Scaling User Guide
(http://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html).

=head1 ATTRIBUTES


=head2 CustomizedLoadMetricSpecification => L<Paws::AutoScalingPlans::CustomizedLoadMetricSpecification>

  The customized load metric to use for predictive scaling. This
parameter or a B<PredefinedLoadMetricSpecification> is required when
configuring predictive scaling, and cannot be used otherwise.


=head2 DisableDynamicScaling => Bool

  Controls whether dynamic scaling by AWS Auto Scaling is disabled. When
dynamic scaling is enabled, AWS Auto Scaling creates target tracking
scaling policies based on the specified target tracking configurations.

The default is enabled (C<false>).


=head2 B<REQUIRED> MaxCapacity => Int

  The maximum capacity of the resource. The exception to this upper limit
is if you specify a non-default setting for
B<PredictiveScalingMaxCapacityBehavior>.


=head2 B<REQUIRED> MinCapacity => Int

  The minimum capacity of the resource.


=head2 PredefinedLoadMetricSpecification => L<Paws::AutoScalingPlans::PredefinedLoadMetricSpecification>

  The predefined load metric to use for predictive scaling. This
parameter or a B<CustomizedLoadMetricSpecification> is required when
configuring predictive scaling, and cannot be used otherwise.


=head2 PredictiveScalingMaxCapacityBehavior => Str

  Defines the behavior that should be applied if the forecast capacity
approaches or exceeds the maximum capacity specified for the resource.
The default value is C<SetForecastCapacityToMaxCapacity>.

The following are possible values:

=over

=item *

C<SetForecastCapacityToMaxCapacity> - AWS Auto Scaling cannot scale
resource capacity higher than the maximum capacity. The maximum
capacity is enforced as a hard limit.

=item *

C<SetMaxCapacityToForecastCapacity> - AWS Auto Scaling may scale
resource capacity higher than the maximum capacity to equal but not
exceed forecast capacity.

=item *

C<SetMaxCapacityAboveForecastCapacity> - AWS Auto Scaling may scale
resource capacity higher than the maximum capacity by a specified
buffer value. The intention is to give the target tracking scaling
policy extra capacity if unexpected traffic occurs.

=back

Only valid when configuring predictive scaling.


=head2 PredictiveScalingMaxCapacityBuffer => Int

  The size of the capacity buffer to use when the forecast capacity is
close to or exceeds the maximum capacity. The value is specified as a
percentage relative to the forecast capacity. For example, if the
buffer is 10, this means a 10 percent buffer, such that if the forecast
capacity is 50, and the maximum capacity is 40, then the effective
maximum capacity is 55.

Only valid when configuring predictive scaling. Required if the
B<PredictiveScalingMaxCapacityBehavior> is set to
C<SetMaxCapacityAboveForecastCapacity>, and cannot be used otherwise.

The range is 1-100.


=head2 PredictiveScalingMode => Str

  The predictive scaling mode. The default value is C<ForecastAndScale>.
Otherwise, AWS Auto Scaling forecasts capacity but does not create any
scheduled scaling actions based on the capacity forecast.


=head2 B<REQUIRED> ResourceId => Str

  The ID of the resource. This string consists of the resource type and
unique identifier.

=over

=item *

Auto Scaling group - The resource type is C<autoScalingGroup> and the
unique identifier is the name of the Auto Scaling group. Example:
C<autoScalingGroup/my-asg>.

=item *

ECS service - The resource type is C<service> and the unique identifier
is the cluster name and service name. Example:
C<service/default/sample-webapp>.

=item *

Spot Fleet request - The resource type is C<spot-fleet-request> and the
unique identifier is the Spot Fleet request ID. Example:
C<spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE>.

=item *

DynamoDB table - The resource type is C<table> and the unique
identifier is the resource ID. Example: C<table/my-table>.

=item *

DynamoDB global secondary index - The resource type is C<index> and the
unique identifier is the resource ID. Example:
C<table/my-table/index/my-table-index>.

=item *

Aurora DB cluster - The resource type is C<cluster> and the unique
identifier is the cluster name. Example: C<cluster:my-db-cluster>.

=back



=head2 B<REQUIRED> ScalableDimension => Str

  The scalable dimension associated with the resource.

=over

=item *

C<autoscaling:autoScalingGroup:DesiredCapacity> - The desired capacity
of an Auto Scaling group.

=item *

C<ecs:service:DesiredCount> - The desired task count of an ECS service.

=item *

C<ec2:spot-fleet-request:TargetCapacity> - The target capacity of a
Spot Fleet request.

=item *

C<dynamodb:table:ReadCapacityUnits> - The provisioned read capacity for
a DynamoDB table.

=item *

C<dynamodb:table:WriteCapacityUnits> - The provisioned write capacity
for a DynamoDB table.

=item *

C<dynamodb:index:ReadCapacityUnits> - The provisioned read capacity for
a DynamoDB global secondary index.

=item *

C<dynamodb:index:WriteCapacityUnits> - The provisioned write capacity
for a DynamoDB global secondary index.

=item *

C<rds:cluster:ReadReplicaCount> - The count of Aurora Replicas in an
Aurora DB cluster. Available for Aurora MySQL-compatible edition.

=back



=head2 ScalingPolicyUpdateBehavior => Str

  Controls whether a resource's externally created scaling policies are
kept or replaced.

The default value is C<KeepExternalPolicies>. If the parameter is set
to C<ReplaceExternalPolicies>, any scaling policies that are external
to AWS Auto Scaling are deleted and new target tracking scaling
policies created.

Only valid when configuring dynamic scaling.

Condition: The number of existing policies to be replaced must be less
than or equal to 50. If there are more than 50 policies to be replaced,
AWS Auto Scaling keeps all existing policies and does not create new
ones.


=head2 ScheduledActionBufferTime => Int

  The amount of time, in seconds, to buffer the run time of scheduled
scaling actions when scaling out. For example, if the forecast says to
add capacity at 10:00 AM, and the buffer time is 5 minutes, then the
run time of the corresponding scheduled scaling action will be 9:55 AM.
The intention is to give resources time to be provisioned. For example,
it can take a few minutes to launch an EC2 instance. The actual amount
of time required depends on several factors, such as the size of the
instance and whether there are startup scripts to complete.

The value must be less than the forecast interval duration of 3600
seconds (60 minutes). The default is 300 seconds.

Only valid when configuring predictive scaling.


=head2 B<REQUIRED> ServiceNamespace => Str

  The namespace of the AWS service.


=head2 B<REQUIRED> TargetTrackingConfigurations => ArrayRef[L<Paws::AutoScalingPlans::TargetTrackingConfiguration>]

  The structure that defines new target tracking configurations (up to
10). Each of these structures includes a specific scaling metric and a
target value for the metric, along with various parameters to use with
dynamic scaling.

With predictive scaling and dynamic scaling, the resource scales based
on the target tracking configuration that provides the largest capacity
for both scale in and scale out.

Condition: The scaling metric must be unique across target tracking
configurations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

