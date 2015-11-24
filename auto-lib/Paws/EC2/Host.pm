package Paws::EC2::Host;
  use Moose;
  has AutoPlacement => (is => 'ro', isa => 'Str', xmlname => 'autoPlacement', traits => ['Unwrapped']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', xmlname => 'availabilityZone', traits => ['Unwrapped']);
  has AvailableCapacity => (is => 'ro', isa => 'Paws::EC2::AvailableCapacity', xmlname => 'availableCapacity', traits => ['Unwrapped']);
  has ClientToken => (is => 'ro', isa => 'Str', xmlname => 'clientToken', traits => ['Unwrapped']);
  has HostId => (is => 'ro', isa => 'Str', xmlname => 'hostId', traits => ['Unwrapped']);
  has HostProperties => (is => 'ro', isa => 'Paws::EC2::HostProperties', xmlname => 'hostProperties', traits => ['Unwrapped']);
  has HostReservationId => (is => 'ro', isa => 'Str', xmlname => 'hostReservationId', traits => ['Unwrapped']);
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::HostInstance]', xmlname => 'instances', traits => ['Unwrapped']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Host

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Host object:

  $service_obj->Method(Att1 => { AutoPlacement => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Host object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoPlacement

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AutoPlacement => Str

  Whether auto-placement is on or off.


=head2 AvailabilityZone => Str

  The Availability Zone of the Dedicated host.


=head2 AvailableCapacity => L<Paws::EC2::AvailableCapacity>

  The number of new instances that can be launched onto the Dedicated
host.


=head2 ClientToken => Str

  Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see How to Ensure Idempotency in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 HostId => Str

  The ID of the Dedicated host.


=head2 HostProperties => L<Paws::EC2::HostProperties>

  The hardware specifications of the Dedicated host.


=head2 HostReservationId => Str

  The reservation ID of the Dedicated host. This returns a "null"
response if the Dedicated host doesn't have an associated reservation.


=head2 Instances => ArrayRef[L<Paws::EC2::HostInstance>]

  The IDs and instance type that are currently running on the Dedicated
host.


=head2 State => Str

  The Dedicated host's state. Can be "available", "under assessment, or
"released".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
