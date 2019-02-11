
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

Paws::ApplicationAutoScaling::RegisterScalableTarget - Arguments for method RegisterScalableTarget on L<Paws::ApplicationAutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterScalableTarget on the
L<Application Auto Scaling|Paws::ApplicationAutoScaling> service. Use the attributes of this class
as arguments to method RegisterScalableTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterScalableTarget.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('ApplicationAutoScaling');
    # To register an ECS service as a scalable target
    # This example registers a scalable target from an Amazon ECS service called
    # web-app that is running on the default cluster, with a minimum desired
    # count of 1 task and a maximum desired count of 10 tasks.
    my $RegisterScalableTargetResponse = $autoscaling->RegisterScalableTarget(
      {
        'MaxCapacity' => 10,
        'MinCapacity' => 1,
        'ResourceId'  => 'service/default/web-app',
        'RoleARN' =>
          'arn:aws:iam::012345678910:role/ApplicationAutoscalingECSRole',
        'ScalableDimension' => 'ecs:service:DesiredCount',
        'ServiceNamespace'  => 'ecs'
      }
    );

   # To register an EC2 Spot fleet as a scalable target
   # This example registers a scalable target from an Amazon EC2 Spot fleet with
   # a minimum target capacity of 1 and a maximum of 10.
    my $RegisterScalableTargetResponse = $autoscaling->RegisterScalableTarget(
      {
        'MaxCapacity' => 10,
        'MinCapacity' => 1,
        'ResourceId' =>
          'spot-fleet-request/sfr-45e69d8a-be48-4539-bbf3-3464e99c50c3',
        'RoleARN' =>
          'arn:aws:iam::012345678910:role/ApplicationAutoscalingSpotRole',
        'ScalableDimension' => 'ec2:spot-fleet-request:TargetCapacity',
        'ServiceNamespace'  => 'ec2'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/RegisterScalableTarget>

=head1 ATTRIBUTES


=head2 MaxCapacity => Int

The maximum value to scale to in response to a scale out event. This
parameter is required to register a scalable target.



=head2 MinCapacity => Int

The minimum value to scale to in response to a scale in event. This
parameter is required to register a scalable target.



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




=head2 RoleARN => Str

Application Auto Scaling creates a service-linked role that grants it
permissions to modify the scalable target on your behalf. For more
information, see Service-Linked Roles for Application Auto Scaling
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-service-linked-roles.html).

For resources that are not supported using a service-linked role, this
parameter is required and must specify the ARN of an IAM role that
allows Application Auto Scaling to modify the scalable target on your
behalf.



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


Valid values are: C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">, C<"elasticmapreduce:instancegroup:InstanceCount">, C<"appstream:fleet:DesiredCapacity">, C<"dynamodb:table:ReadCapacityUnits">, C<"dynamodb:table:WriteCapacityUnits">, C<"dynamodb:index:ReadCapacityUnits">, C<"dynamodb:index:WriteCapacityUnits">, C<"rds:cluster:ReadReplicaCount">, C<"sagemaker:variant:DesiredInstanceCount">, C<"custom-resource:ResourceType:Property">

=head2 B<REQUIRED> ServiceNamespace => Str

The namespace of the AWS service that provides the resource or
C<custom-resource> for a resource provided by your own application or
service. For more information, see AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces)
in the I<Amazon Web Services General Reference>.

Valid values are: C<"ecs">, C<"elasticmapreduce">, C<"ec2">, C<"appstream">, C<"dynamodb">, C<"rds">, C<"sagemaker">, C<"custom-resource">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterScalableTarget in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

