package Paws::ApplicationAutoScaling::ScheduledAction;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndTime => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str');
  has ScalableTargetAction => (is => 'ro', isa => 'Paws::ApplicationAutoScaling::ScalableTargetAction');
  has Schedule => (is => 'ro', isa => 'Str', required => 1);
  has ScheduledActionARN => (is => 'ro', isa => 'Str', required => 1);
  has ScheduledActionName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::ScheduledAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::ScheduledAction object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::ScheduledAction object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Represents a scheduled action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  The date and time that the scheduled action was created.


=head2 EndTime => Str

  The date and time that the action is scheduled to end.


=head2 B<REQUIRED> ResourceId => Str

  The identifier of the resource associated with the scaling policy. This
string consists of the resource type and unique identifier.

=over

=item *

ECS service - The resource type is C<service> and the unique identifier
is the cluster name and service name. Example:
C<service/default/sample-webapp>.

=item *

Spot fleet request - The resource type is C<spot-fleet-request> and the
unique identifier is the Spot fleet request ID. Example:
C<spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE>.

=item *

EMR cluster - The resource type is C<instancegroup> and the unique
identifier is the cluster ID and instance group ID. Example:
C<instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0>.

=item *

AppStream 2.0 fleet - The resource type is C<fleet> and the unique
identifier is the fleet name. Example: C<fleet/sample-fleet>.

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

=item *

Amazon SageMaker endpoint variants - The resource type is C<variant>
and the unique identifier is the resource ID. Example:
C<endpoint/my-end-point/variant/KMeansClustering>.

=item *

Custom resources are not supported with a resource type. This parameter
must specify the C<OutputValue> from the CloudFormation template stack
used to access the resources. The unique identifier is defined by the
service provider. More information is available in our GitHub
repository (https://github.com/aws/aws-auto-scaling-custom-resource).

=back



=head2 ScalableDimension => Str

  The scalable dimension. This string consists of the service namespace,
resource type, and scaling property.

=over

=item *

C<ecs:service:DesiredCount> - The desired task count of an ECS service.

=item *

C<ec2:spot-fleet-request:TargetCapacity> - The target capacity of a
Spot fleet request.

=item *

C<elasticmapreduce:instancegroup:InstanceCount> - The instance count of
an EMR Instance Group.

=item *

C<appstream:fleet:DesiredCapacity> - The desired capacity of an
AppStream 2.0 fleet.

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
Aurora DB cluster. Available for Aurora MySQL-compatible edition and
Aurora PostgreSQL-compatible edition.

=item *

C<sagemaker:variant:DesiredInstanceCount> - The number of EC2 instances
for an Amazon SageMaker model endpoint variant.

=item *

C<custom-resource:ResourceType:Property> - The scalable dimension for a
custom resource provided by your own application or service.

=back



=head2 ScalableTargetAction => L<Paws::ApplicationAutoScaling::ScalableTargetAction>

  The new minimum and maximum capacity. You can set both values or just
one. During the scheduled time, if the current capacity is below the
minimum capacity, Application Auto Scaling scales out to the minimum
capacity. If the current capacity is above the maximum capacity,
Application Auto Scaling scales in to the maximum capacity.


=head2 B<REQUIRED> Schedule => Str

  The schedule for this action. The following formats are supported:

=over

=item *

At expressions - "C<at(I<yyyy>-I<mm>-I<dd>TI<hh>:I<mm>:I<ss>)>"

=item *

Rate expressions - "C<rate(I<value> I<unit>)>"

=item *

Cron expressions - "C<cron(I<fields>)>"

=back

At expressions are useful for one-time schedules. Specify the time, in
UTC.

For rate expressions, I<value> is a positive integer and I<unit> is
C<minute> | C<minutes> | C<hour> | C<hours> | C<day> | C<days>.

For more information about cron expressions, see Cron Expressions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions)
in the I<Amazon CloudWatch Events User Guide>.


=head2 B<REQUIRED> ScheduledActionARN => Str

  The Amazon Resource Name (ARN) of the scheduled action.


=head2 B<REQUIRED> ScheduledActionName => Str

  The name of the scheduled action.


=head2 B<REQUIRED> ServiceNamespace => Str

  The namespace of the AWS service that provides the resource or
C<custom-resource> for a resource provided by your own application or
service. For more information, see AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces)
in the I<Amazon Web Services General Reference>.


=head2 StartTime => Str

  The date and time that the action is scheduled to begin.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

