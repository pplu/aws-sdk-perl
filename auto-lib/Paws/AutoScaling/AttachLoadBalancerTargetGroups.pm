
package Paws::AutoScaling::AttachLoadBalancerTargetGroups;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has TargetGroupARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerTargetGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::AttachLoadBalancerTargetGroupsResultType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerTargetGroupsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AttachLoadBalancerTargetGroups - Arguments for method AttachLoadBalancerTargetGroups on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachLoadBalancerTargetGroups on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method AttachLoadBalancerTargetGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachLoadBalancerTargetGroups.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To attach a target group to an Auto Scaling group
    # This example attaches the specified target group to the specified Auto
    # Scaling group.
    my $AttachLoadBalancerTargetGroupsResultType =
      $autoscaling->AttachLoadBalancerTargetGroups(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'TargetGroupARNs'      => [
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067'
        ]
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/AttachLoadBalancerTargetGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 B<REQUIRED> TargetGroupARNs => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the target groups. You can specify
up to 10 target groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachLoadBalancerTargetGroups in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

