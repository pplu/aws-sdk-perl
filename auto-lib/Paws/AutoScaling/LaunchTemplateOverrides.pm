# Generated by default/object.tt
package Paws::AutoScaling::LaunchTemplateOverrides;
  use Moose;
  has InstanceType => (is => 'ro', isa => 'Str');
  has LaunchTemplateSpecification => (is => 'ro', isa => 'Paws::AutoScaling::LaunchTemplateSpecification');
  has WeightedCapacity => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LaunchTemplateOverrides

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::LaunchTemplateOverrides object:

  $service_obj->Method(Att1 => { InstanceType => $value, ..., WeightedCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::LaunchTemplateOverrides object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceType

=head1 DESCRIPTION

Describes an override for a launch template. The maximum number of
instance types that can be associated with an Auto Scaling group is 40.
The maximum number of distinct launch templates you can define for an
Auto Scaling group is 20. For more information about configuring
overrides, see Configuring overrides
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-override-options.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

=head1 ATTRIBUTES


=head2 InstanceType => Str

The instance type, such as C<m3.xlarge>. You must use an instance type
that is supported in your requested Region and Availability Zones. For
more information, see Instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 LaunchTemplateSpecification => L<Paws::AutoScaling::LaunchTemplateSpecification>

Provides the launch template to be used when launching the instance
type. For example, some instance types might require a launch template
with a different AMI. If not provided, Amazon EC2 Auto Scaling uses the
launch template that's defined for your mixed instances policy. For
more information, see Specifying a different launch template for an
instance type
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-launch-template-overrides.html)
in the I<Amazon EC2 Auto Scaling User Guide>.


=head2 WeightedCapacity => Str

The number of capacity units provided by the specified instance type in
terms of virtual CPUs, memory, storage, throughput, or other relative
performance characteristic. When a Spot or On-Demand Instance is
provisioned, the capacity units count toward the desired capacity.
Amazon EC2 Auto Scaling provisions instances until the desired capacity
is totally fulfilled, even if this results in an overage. For example,
if there are 2 units remaining to fulfill capacity, and Amazon EC2 Auto
Scaling can only provision an instance with a C<WeightedCapacity> of 5
units, the instance is provisioned, and the desired capacity is
exceeded by 3 units. For more information, see Instance weighting for
Amazon EC2 Auto Scaling
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html)
in the I<Amazon EC2 Auto Scaling User Guide>. Value must be in the
range of 1 to 999.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

