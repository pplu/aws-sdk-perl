
package Paws::ApplicationAutoScaling::DescribeScalingActivities;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ScalableDimension => (is => 'ro', isa => 'Str');
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalingActivities - Arguments for method DescribeScalingActivities on Paws::ApplicationAutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalingActivities on the 
Application Auto Scaling service. Use the attributes of this class
as arguments to method DescribeScalingActivities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalingActivities.

As an example:

  $service_obj->DescribeScalingActivities(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of scalable target results. This value can be
between 1 and 50. The default value is 50.

If this parameter is used, the operation returns up to C<MaxResults>
results at a time, along with a C<NextToken> value. To get the next set
of results, include the C<NextToken> value in a subsequent call. If
this parameter is not used, the operation returns up to 50 results and
a C<NextToken> value, if applicable.



=head2 NextToken => Str

The token for the next set of results.



=head2 ResourceId => Str

The identifier of the resource associated with the scaling activity.
This string consists of the resource type and unique identifier. If you
specify a scalable dimension, you must also specify a resource ID.

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

=back




=head2 ScalableDimension => Str

The scalable dimension. This string consists of the service namespace,
resource type, and scaling property. If you specify a scalable
dimension, you must also specify a resource ID.

=over

=item *

C<ecs:service:DesiredCount> - The desired task count of an ECS service.

=item *

C<ec2:spot-fleet-request:TargetCapacity> - The target capacity of a
Spot fleet request.

=item *

C<elasticmapreduce:instancegroup:InstanceCount> - The instance count of
an EMR Instance Group.

=back


Valid values are: C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">, C<"elasticmapreduce:instancegroup:InstanceCount">

=head2 B<REQUIRED> ServiceNamespace => Str

The namespace of the AWS service. For more information, see AWS Service
Namespaces in the I<Amazon Web Services General Reference>.

Valid values are: C<"ecs">, C<"elasticmapreduce">, C<"ec2">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalingActivities in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

