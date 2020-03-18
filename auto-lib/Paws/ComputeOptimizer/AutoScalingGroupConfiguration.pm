package Paws::ComputeOptimizer::AutoScalingGroupConfiguration;
  use Moose;
  has DesiredCapacity => (is => 'ro', isa => 'Int', request_name => 'desiredCapacity', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has MaxSize => (is => 'ro', isa => 'Int', request_name => 'maxSize', traits => ['NameInRequest']);
  has MinSize => (is => 'ro', isa => 'Int', request_name => 'minSize', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::AutoScalingGroupConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::AutoScalingGroupConfiguration object:

  $service_obj->Method(Att1 => { DesiredCapacity => $value, ..., MinSize => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::AutoScalingGroupConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DesiredCapacity

=head1 DESCRIPTION

Describes the configuration of an Auto Scaling group.

=head1 ATTRIBUTES


=head2 DesiredCapacity => Int

  The desired capacity, or number of instances, for the Auto Scaling
group.


=head2 InstanceType => Str

  The instance type for the Auto Scaling group.


=head2 MaxSize => Int

  The maximum size, or maximum number of instances, for the Auto Scaling
group.


=head2 MinSize => Int

  The minimum size, or minimum number of instances, for the Auto Scaling
group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

