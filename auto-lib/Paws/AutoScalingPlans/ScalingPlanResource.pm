package Paws::AutoScalingPlans::ScalingPlanResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ScalingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingPlanVersion => (is => 'ro', isa => 'Int', required => 1);
  has ScalingPolicies => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::ScalingPolicy]');
  has ScalingStatusCode => (is => 'ro', isa => 'Str', required => 1);
  has ScalingStatusMessage => (is => 'ro', isa => 'Str');
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::ScalingPlanResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScalingPlans::ScalingPlanResource object:

  $service_obj->Method(Att1 => { ResourceId => $value, ..., ServiceNamespace => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScalingPlans::ScalingPlanResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceId

=head1 DESCRIPTION

Represents a scalable resource.

=head1 ATTRIBUTES


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

  The scalable dimension for the resource.

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



=head2 B<REQUIRED> ScalingPlanName => Str

  The name of the scaling plan.


=head2 B<REQUIRED> ScalingPlanVersion => Int

  The version number of the scaling plan.


=head2 ScalingPolicies => ArrayRef[L<Paws::AutoScalingPlans::ScalingPolicy>]

  The scaling policies.


=head2 B<REQUIRED> ScalingStatusCode => Str

  The scaling status of the resource.

=over

=item *

C<Active> - The scaling configuration is active.

=item *

C<Inactive> - The scaling configuration is not active because the
scaling plan is being created or the scaling configuration could not be
applied. Check the status message for more information.

=item *

C<PartiallyActive> - The scaling configuration is partially active
because the scaling plan is being created or deleted or the scaling
configuration could not be fully applied. Check the status message for
more information.

=back



=head2 ScalingStatusMessage => Str

  A simple message about the current scaling status of the resource.


=head2 B<REQUIRED> ServiceNamespace => Str

  The namespace of the AWS service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

