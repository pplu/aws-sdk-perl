package Paws::AutoScaling::MixedInstancesPolicy;
  use Moose;
  has InstancesDistribution => (is => 'ro', isa => 'Paws::AutoScaling::InstancesDistribution');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::AutoScaling::LaunchTemplate');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::MixedInstancesPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::MixedInstancesPolicy object:

  $service_obj->Method(Att1 => { InstancesDistribution => $value, ..., LaunchTemplate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::MixedInstancesPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->InstancesDistribution

=head1 DESCRIPTION

Describes a mixed instances policy for an Auto Scaling group. With
mixed instances, your Auto Scaling group can provision a combination of
On-Demand Instances and Spot Instances across multiple instance types.
For more information, see Using Multiple Instance Types and Purchase
Options
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html#asg-purchase-options)
in the I<Amazon EC2 Auto Scaling User Guide>.

When you create your Auto Scaling group, you can specify a launch
configuration or template as a parameter for the top-level object, or
you can specify a mixed instances policy, but not both at the same
time.

=head1 ATTRIBUTES


=head2 InstancesDistribution => L<Paws::AutoScaling::InstancesDistribution>

  The instances distribution to use.

If you leave this parameter unspecified when creating the group, the
default values are used.


=head2 LaunchTemplate => L<Paws::AutoScaling::LaunchTemplate>

  The launch template and overrides.

This parameter is required when creating an Auto Scaling group with a
mixed instances policy, but is not required when updating the group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

