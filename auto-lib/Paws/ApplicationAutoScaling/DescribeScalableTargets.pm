
package Paws::ApplicationAutoScaling::DescribeScalableTargets;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIds => (is => 'ro', isa => 'ArrayRef[Str]');
  has ScalableDimension => (is => 'ro', isa => 'Str');
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalableTargets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::DescribeScalableTargetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalableTargets - Arguments for method DescribeScalableTargets on Paws::ApplicationAutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalableTargets on the 
Application Auto Scaling service. Use the attributes of this class
as arguments to method DescribeScalableTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalableTargets.

As an example:

  $service_obj->DescribeScalableTargets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of scalable target results returned by
C<DescribeScalableTargets> in paginated output. When this parameter is
used, C<DescribeScalableTargets> returns up to C<MaxResults> results in
a single page along with a C<NextToken> response element. The remaining
results of the initial request can be seen by sending another
C<DescribeScalableTargets> request with the returned C<NextToken>
value. This value can be between 1 and 50. If this parameter is not
used, then C<DescribeScalableTargets> returns up to 50 results and a
C<NextToken> value, if applicable.



=head2 NextToken => Str

The C<NextToken> value returned from a previous paginated
C<DescribeScalableTargets> request. Pagination continues from the end
of the previous results that returned the C<NextToken> value. This
value is C<null> when there are no more results to return.



=head2 ResourceIds => ArrayRef[Str]

The unique identifier string for the resource associated with the
scalable target. For Amazon ECS services, this value is the resource
type, followed by the cluster name and service name, such as
C<service/default/sample-webapp>. If you specify a scalable dimension,
you must also specify a resource ID.



=head2 ScalableDimension => Str

The scalable dimension associated with the scalable target. The
scalable dimension contains the service namespace, resource type, and
scaling property, such as C<ecs:service:DesiredCount> for the desired
task count of an Amazon ECS service. If you specify a scalable
dimension, you must also specify a resource ID.

Valid values are: C<"ecs:service:DesiredCount">

=head2 B<REQUIRED> ServiceNamespace => Str

The namespace for the AWS service that the scalable target is
associated with. For more information, see AWS Service Namespaces in
the Amazon Web Services General Reference.

Valid values are: C<"ecs">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalableTargets in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

