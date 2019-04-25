package Paws::EC2::FleetLaunchTemplateOverrides;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has MaxPrice => (is => 'ro', isa => 'Str', request_name => 'maxPrice', traits => ['NameInRequest']);
  has Placement => (is => 'ro', isa => 'Paws::EC2::PlacementResponse', request_name => 'placement', traits => ['NameInRequest']);
  has Priority => (is => 'ro', isa => 'Num', request_name => 'priority', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has WeightedCapacity => (is => 'ro', isa => 'Num', request_name => 'weightedCapacity', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FleetLaunchTemplateOverrides

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FleetLaunchTemplateOverrides object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., WeightedCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FleetLaunchTemplateOverrides object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone in which to launch the instances.


=head2 InstanceType => Str

  The instance type.


=head2 MaxPrice => Str

  The maximum price per unit hour that you are willing to pay for a Spot
Instance.


=head2 Placement => L<Paws::EC2::PlacementResponse>

  The location where the instance launched, if applicable.


=head2 Priority => Num

  The priority for the launch template override. If B<AllocationStrategy>
is set to C<prioritized>, EC2 Fleet uses priority to determine which
launch template override to use first in fulfilling On-Demand capacity.
The highest priority is launched first. Valid values are whole numbers
starting at C<0>. The lower the number, the higher the priority. If no
number is set, the override has the lowest priority.


=head2 SubnetId => Str

  The ID of the subnet in which to launch the instances.


=head2 WeightedCapacity => Num

  The number of units provided by the specified instance type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
