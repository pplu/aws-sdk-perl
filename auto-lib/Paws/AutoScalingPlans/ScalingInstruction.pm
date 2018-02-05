package Paws::AutoScalingPlans::ScalingInstruction;
  use Moose;
  has MaxCapacity => (is => 'ro', isa => 'Int', required => 1);
  has MinCapacity => (is => 'ro', isa => 'Int', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
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

  $service_obj->Method(Att1 => { MaxCapacity => $value, ..., TargetTrackingConfigurations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScalingPlans::ScalingInstruction object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxCapacity

=head1 DESCRIPTION

Specifies the scaling configuration for a scalable resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxCapacity => Int

  The maximum value to scale to in response to a scale out event.


=head2 B<REQUIRED> MinCapacity => Int

  The minimum value to scale to in response to a scale in event.


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

Spot fleet request - The resource type is C<spot-fleet-request> and the
unique identifier is the Spot fleet request ID. Example:
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
Spot fleet request.

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



=head2 B<REQUIRED> ServiceNamespace => Str

  The namespace of the AWS service.


=head2 B<REQUIRED> TargetTrackingConfigurations => ArrayRef[L<Paws::AutoScalingPlans::TargetTrackingConfiguration>]

  The target tracking scaling policies (up to 10).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

