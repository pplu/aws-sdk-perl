package Paws::EC2::CapacityReservation;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has AvailableInstanceCount => (is => 'ro', isa => 'Int', request_name => 'availableInstanceCount', traits => ['NameInRequest']);
  has CapacityReservationId => (is => 'ro', isa => 'Str', request_name => 'capacityReservationId', traits => ['NameInRequest']);
  has CreateDate => (is => 'ro', isa => 'Str', request_name => 'createDate', traits => ['NameInRequest']);
  has EbsOptimized => (is => 'ro', isa => 'Bool', request_name => 'ebsOptimized', traits => ['NameInRequest']);
  has EndDate => (is => 'ro', isa => 'Str', request_name => 'endDate', traits => ['NameInRequest']);
  has EndDateType => (is => 'ro', isa => 'Str', request_name => 'endDateType', traits => ['NameInRequest']);
  has EphemeralStorage => (is => 'ro', isa => 'Bool', request_name => 'ephemeralStorage', traits => ['NameInRequest']);
  has InstanceMatchCriteria => (is => 'ro', isa => 'Str', request_name => 'instanceMatchCriteria', traits => ['NameInRequest']);
  has InstancePlatform => (is => 'ro', isa => 'Str', request_name => 'instancePlatform', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has Tenancy => (is => 'ro', isa => 'Str', request_name => 'tenancy', traits => ['NameInRequest']);
  has TotalInstanceCount => (is => 'ro', isa => 'Int', request_name => 'totalInstanceCount', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CapacityReservation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CapacityReservation object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., TotalInstanceCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CapacityReservation object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone in which the capacity is reserved.


=head2 AvailableInstanceCount => Int

  The remaining capacity. Indicates the number of instances that can be
launched in the Capacity Reservation.


=head2 CapacityReservationId => Str

  The ID of the Capacity Reservation.


=head2 CreateDate => Str

  The date and time at which the Capacity Reservation was created.


=head2 EbsOptimized => Bool

  Indicates whether the Capacity Reservation supports EBS-optimized
instances. This optimization provides dedicated throughput to Amazon
EBS and an optimized configuration stack to provide optimal I/O
performance. This optimization isn't available with all instance types.
Additional usage charges apply when using an EBS- optimized instance.


=head2 EndDate => Str

  The date and time at which the Capacity Reservation expires. When a
Capacity Reservation expires, the reserved capacity is released and you
can no longer launch instances into it. The Capacity Reservation's
state changes to C<expired> when it reaches its end date and time.


=head2 EndDateType => Str

  Indicates the way in which the Capacity Reservation ends. A Capacity
Reservation can have one of the following end types:

=over

=item *

C<unlimited> - The Capacity Reservation remains active until you
explicitly cancel it.

=item *

C<limited> - The Capacity Reservation expires automatically at a
specified date and time.

=back



=head2 EphemeralStorage => Bool

  Indicates whether the Capacity Reservation supports instances with
temporary, block-level storage.


=head2 InstanceMatchCriteria => Str

  Indicates the type of instance launches that the Capacity Reservation
accepts. The options include:

=over

=item *

C<open> - The Capacity Reservation accepts all instances that have
matching attributes (instance type, platform, and Availability Zone).
Instances that have matching attributes launch into the Capacity
Reservation automatically without specifying any additional parameters.

=item *

C<targeted> - The Capacity Reservation only accepts instances that have
matching attributes (instance type, platform, and Availability Zone),
and explicitly target the Capacity Reservation. This ensures that only
permitted instances can use the reserved capacity.

=back



=head2 InstancePlatform => Str

  The type of operating system for which the Capacity Reservation
reserves capacity.


=head2 InstanceType => Str

  The type of instance for which the Capacity Reservation reserves
capacity.


=head2 State => Str

  The current state of the Capacity Reservation. A Capacity Reservation
can be in one of the following states:

=over

=item *

C<active> - The Capacity Reservation is active and the capacity is
available for your use.

=item *

C<cancelled> - The Capacity Reservation expired automatically at the
date and time specified in your request. The reserved capacity is no
longer available for your use.

=item *

C<expired> - The Capacity Reservation was manually cancelled. The
reserved capacity is no longer available for your use.

=item *

C<pending> - The Capacity Reservation request was successful but the
capacity provisioning is still pending.

=item *

C<failed> - The Capacity Reservation request has failed. A request
might fail due to invalid request parameters, capacity constraints, or
instance limit constraints. Failed requests are retained for 60
minutes.

=back



=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the Capacity Reservation.


=head2 Tenancy => Str

  Indicates the tenancy of the Capacity Reservation. A Capacity
Reservation can have one of the following tenancy settings:

=over

=item *

C<default> - The Capacity Reservation is created on hardware that is
shared with other AWS accounts.

=item *

C<dedicated> - The Capacity Reservation is created on single-tenant
hardware that is dedicated to a single AWS account.

=back



=head2 TotalInstanceCount => Int

  The number of instances for which the Capacity Reservation reserves
capacity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
