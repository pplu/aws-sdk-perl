package Paws::EC2::OnDemandOptionsRequest;
  use Moose;
  has AllocationStrategy => (is => 'ro', isa => 'Str');
  has CapacityReservationOptions => (is => 'ro', isa => 'Paws::EC2::CapacityReservationOptionsRequest');
  has MaxTotalPrice => (is => 'ro', isa => 'Str');
  has MinTargetCapacity => (is => 'ro', isa => 'Int');
  has SingleAvailabilityZone => (is => 'ro', isa => 'Bool');
  has SingleInstanceType => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::OnDemandOptionsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::OnDemandOptionsRequest object:

  $service_obj->Method(Att1 => { AllocationStrategy => $value, ..., SingleInstanceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::OnDemandOptionsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationStrategy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationStrategy => Str

The order of the launch template overrides to use in fulfilling
On-Demand capacity. If you specify C<lowest-price>, EC2 Fleet uses
price to determine the order, launching the lowest price first. If you
specify C<prioritized>, EC2 Fleet uses the priority that you assigned
to each launch template override, launching the highest priority first.
If you do not specify a value, EC2 Fleet defaults to C<lowest-price>.


=head2 CapacityReservationOptions => L<Paws::EC2::CapacityReservationOptionsRequest>

The strategy for using unused Capacity Reservations for fulfilling
On-Demand capacity. Supported only for fleets of type C<instant>.


=head2 MaxTotalPrice => Str

The maximum amount per hour for On-Demand Instances that you're willing
to pay.


=head2 MinTargetCapacity => Int

The minimum target capacity for On-Demand Instances in the fleet. If
the minimum target capacity is not reached, the fleet launches no
instances.


=head2 SingleAvailabilityZone => Bool

Indicates that the fleet launches all On-Demand Instances into a single
Availability Zone. Supported only for fleets of type C<instant>.


=head2 SingleInstanceType => Bool

Indicates that the fleet uses a single instance type to launch all
On-Demand Instances in the fleet. Supported only for fleets of type
C<instant>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
