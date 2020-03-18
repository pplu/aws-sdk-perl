package Paws::AutoScaling::LaunchTemplateOverrides;
  use Moose;
  has InstanceType => (is => 'ro', isa => 'Str');
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

Describes an override for a launch template.

=head1 ATTRIBUTES


=head2 InstanceType => Str

  The instance type.

For information about available instance types, see Available Instance
Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes)
in the I<Amazon Elastic Compute Cloud User Guide.>


=head2 WeightedCapacity => Str

  The number of capacity units, which gives the instance type a
proportional weight to other instance types. For example, larger
instance types are generally weighted more than smaller instance types.
These are the same units that you chose to set the desired capacity in
terms of instances, or a performance attribute such as vCPUs, memory,
or I/O.

For more information, see Instance Weighting for Amazon EC2 Auto
Scaling
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

Valid Range: Minimum value of 1. Maximum value of 999.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

