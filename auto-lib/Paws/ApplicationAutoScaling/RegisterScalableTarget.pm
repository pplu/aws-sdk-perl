
package Paws::ApplicationAutoScaling::RegisterScalableTarget;
  use Moose;
  has MaxCapacity => (is => 'ro', isa => 'Int');
  has MinCapacity => (is => 'ro', isa => 'Int');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str');
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterScalableTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::RegisterScalableTargetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::RegisterScalableTarget - Arguments for method RegisterScalableTarget on Paws::ApplicationAutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterScalableTarget on the 
Application Auto Scaling service. Use the attributes of this class
as arguments to method RegisterScalableTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterScalableTarget.

As an example:

  $service_obj->RegisterScalableTarget(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxCapacity => Int

The maximum value to scale to in response to a scale out event. This
parameter is required if you are registering a scalable target and
optional if you are updating one.



=head2 MinCapacity => Int

The minimum value to scale to in response to a scale in event. This
parameter is required if you are registering a scalable target and
optional if you are updating one.



=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource associated with the scalable target.
This string consists of the resource type and unique identifier.

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

=back




=head2 RoleARN => Str

The ARN of an IAM role that allows Application Auto Scaling to modify
the scalable target on your behalf. This parameter is required when you
register a scalable target and optional when you update one.



=head2 B<REQUIRED> ScalableDimension => Str

The scalable dimension associated with the scalable target. This string
consists of the service namespace, resource type, and scaling property.

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

=back


Valid values are: C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">, C<"elasticmapreduce:instancegroup:InstanceCount">, C<"appstream:fleet:DesiredCapacity">, C<"dynamodb:table:ReadCapacityUnits">, C<"dynamodb:table:WriteCapacityUnits">, C<"dynamodb:index:ReadCapacityUnits">, C<"dynamodb:index:WriteCapacityUnits">

=head2 B<REQUIRED> ServiceNamespace => Str

The namespace of the AWS service. For more information, see AWS Service
Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces)
in the I<Amazon Web Services General Reference>.

Valid values are: C<"ecs">, C<"elasticmapreduce">, C<"ec2">, C<"appstream">, C<"dynamodb">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterScalableTarget in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

