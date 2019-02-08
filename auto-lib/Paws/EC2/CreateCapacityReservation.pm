
package Paws::EC2::CreateCapacityReservation;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has EndDate => (is => 'ro', isa => 'Str');
  has EndDateType => (is => 'ro', isa => 'Str');
  has EphemeralStorage => (is => 'ro', isa => 'Bool');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceMatchCriteria => (is => 'ro', isa => 'Str');
  has InstancePlatform => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]');
  has Tenancy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCapacityReservation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateCapacityReservationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateCapacityReservation - Arguments for method CreateCapacityReservation on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCapacityReservation on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateCapacityReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCapacityReservation.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateCapacityReservationResult = $ec2->CreateCapacityReservation(
      AvailabilityZone      => 'MyString',
      InstanceCount         => 1,
      InstancePlatform      => 'Linux/UNIX',
      InstanceType          => 'MyString',
      ClientToken           => 'MyString',               # OPTIONAL
      DryRun                => 1,                        # OPTIONAL
      EbsOptimized          => 1,                        # OPTIONAL
      EndDate               => '1970-01-01T01:00:00',    # OPTIONAL
      EndDateType           => 'unlimited',              # OPTIONAL
      EphemeralStorage      => 1,                        # OPTIONAL
      InstanceMatchCriteria => 'open',                   # OPTIONAL
      TagSpecifications     => [
        {
          ResourceType => 'customer-gateway'
          , # values: customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, image, instance, internet-gateway, launch-template, natgateway, network-acl, network-interface, reserved-instances, route-table, security-group, snapshot, spot-instances-request, subnet, transit-gateway, transit-gateway-attachment, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',
              Value => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      Tenancy => 'default',    # OPTIONAL
    );

    # Results:
    my $CapacityReservation =
      $CreateCapacityReservationResult->CapacityReservation;

    # Returns a L<Paws::EC2::CreateCapacityReservationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateCapacityReservation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone in which to create the Capacity Reservation.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).

Constraint: Maximum 64 ASCII characters.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



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

You must provide an C<EndDate> value if C<EndDateType> is C<limited>.
Omit C<EndDate> if C<EndDateType> is C<unlimited>.

If the C<EndDateType> is C<limited>, the Capacity Reservation is
cancelled within an hour from the specified time. For example, if you
specify 5/31/2019, 13:30:55, the Capacity Reservation is guaranteed to
end between 13:30:55 and 14:30:55 on 5/31/2019.



=head2 EndDateType => Str

Indicates the way in which the Capacity Reservation ends. A Capacity
Reservation can have one of the following end types:

=over

=item *

C<unlimited> - The Capacity Reservation remains active until you
explicitly cancel it. Do not provide an C<EndDate> if the
C<EndDateType> is C<unlimited>.

=item *

C<limited> - The Capacity Reservation expires automatically at a
specified date and time. You must provide an C<EndDate> value if the
C<EndDateType> value is C<limited>.

=back


Valid values are: C<"unlimited">, C<"limited">

=head2 EphemeralStorage => Bool

Indicates whether the Capacity Reservation supports instances with
temporary, block-level storage.



=head2 B<REQUIRED> InstanceCount => Int

The number of instances for which to reserve capacity.



=head2 InstanceMatchCriteria => Str

Indicates the type of instance launches that the Capacity Reservation
accepts. The options include:

=over

=item *

C<open> - The Capacity Reservation automatically matches all instances
that have matching attributes (instance type, platform, and
Availability Zone). Instances that have matching attributes run in the
Capacity Reservation automatically without specifying any additional
parameters.

=item *

C<targeted> - The Capacity Reservation only accepts instances that have
matching attributes (instance type, platform, and Availability Zone),
and explicitly target the Capacity Reservation. This ensures that only
permitted instances can use the reserved capacity.

=back

Default: C<open>

Valid values are: C<"open">, C<"targeted">

=head2 B<REQUIRED> InstancePlatform => Str

The type of operating system for which to reserve capacity.

Valid values are: C<"Linux/UNIX">, C<"Red Hat Enterprise Linux">, C<"SUSE Linux">, C<"Windows">, C<"Windows with SQL Server">, C<"Windows with SQL Server Enterprise">, C<"Windows with SQL Server Standard">, C<"Windows with SQL Server Web">, C<"Linux with SQL Server Standard">, C<"Linux with SQL Server Web">, C<"Linux with SQL Server Enterprise">

=head2 B<REQUIRED> InstanceType => Str

The instance type for which to reserve capacity. For more information,
see Instance Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the Capacity Reservation during launch.



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


Valid values are: C<"default">, C<"dedicated">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCapacityReservation in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

