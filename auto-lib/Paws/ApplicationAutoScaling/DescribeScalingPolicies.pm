
package Paws::ApplicationAutoScaling::DescribeScalingPolicies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ScalableDimension => (is => 'ro', isa => 'Str');
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::DescribeScalingPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalingPolicies - Arguments for method DescribeScalingPolicies on Paws::ApplicationAutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalingPolicies on the 
Application Auto Scaling service. Use the attributes of this class
as arguments to method DescribeScalingPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalingPolicies.

As an example:

  $service_obj->DescribeScalingPolicies(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of scaling policy results returned by
C<DescribeScalingPolicies> in paginated output. When this parameter is
used, C<DescribeScalingPolicies> returns up to C<MaxResults> results in
a single page along with a C<NextToken> response element. The remaining
results of the initial request can be seen by sending another
C<DescribeScalingPolicies> request with the returned C<NextToken>
value. This value can be between 1 and 50. If this parameter is not
used, then C<DescribeScalingPolicies> returns up to 50 results and a
C<NextToken> value, if applicable.



=head2 NextToken => Str

The C<NextToken> value returned from a previous paginated
C<DescribeScalingPolicies> request. Pagination continues from the end
of the previous results that returned the C<NextToken> value. This
value is C<null> when there are no more results to return.



=head2 PolicyNames => ArrayRef[Str|Undef]

The names of the scaling policies to describe.



=head2 ResourceId => Str

The unique resource identifier string of the scalable target that the
scaling policy is associated with. For Amazon ECS services, the
resource type is C<services>, and the identifier is the cluster name
and service name; for example, C<service/default/sample-webapp>. For
Amazon EC2 Spot fleet requests, the resource type is
C<spot-fleet-request>, and the identifier is the Spot fleet request ID;
for example,
C<spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE>. If you
specify a scalable dimension, you must also specify a resource ID.



=head2 ScalableDimension => Str

The scalable dimension of the scalable target that the scaling policy
is associated with. The scalable dimension contains the service
namespace, resource type, and scaling property, such as
C<ecs:service:DesiredCount> for the desired task count of an Amazon ECS
service, or C<ec2:spot-fleet-request:TargetCapacity> for the target
capacity of an Amazon EC2 Spot fleet request. If you specify a scalable
dimension, you must also specify a resource ID.

Valid values are: C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">

=head2 B<REQUIRED> ServiceNamespace => Str

The AWS service namespace of the scalable target that the scaling
policy is associated with. For more information, see AWS Service
Namespaces in the Amazon Web Services General Reference.

Valid values are: C<"ecs">, C<"ec2">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalingPolicies in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

