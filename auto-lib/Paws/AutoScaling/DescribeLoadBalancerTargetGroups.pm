
package Paws::AutoScaling::DescribeLoadBalancerTargetGroups;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerTargetGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DescribeLoadBalancerTargetGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerTargetGroupsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeLoadBalancerTargetGroups - Arguments for method DescribeLoadBalancerTargetGroups on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLoadBalancerTargetGroups on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeLoadBalancerTargetGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLoadBalancerTargetGroups.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe the target groups for an Auto Scaling group
    # This example describes the target groups attached to the specified Auto
    # Scaling group.
    my $DescribeLoadBalancerTargetGroupsResponse =
      $autoscaling->DescribeLoadBalancerTargetGroups(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group'
      }
      );

    # Results:
    my $LoadBalancerTargetGroups =
      $DescribeLoadBalancerTargetGroupsResponse->LoadBalancerTargetGroups;

# Returns a L<Paws::AutoScaling::DescribeLoadBalancerTargetGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeLoadBalancerTargetGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 MaxRecords => Int

The maximum number of items to return with this call. The default value
is 100 and the maximum value is 100.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLoadBalancerTargetGroups in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

