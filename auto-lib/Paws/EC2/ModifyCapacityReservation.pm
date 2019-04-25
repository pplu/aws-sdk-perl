
package Paws::EC2::ModifyCapacityReservation;
  use Moose;
  has CapacityReservationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has EndDate => (is => 'ro', isa => 'Str');
  has EndDateType => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCapacityReservation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyCapacityReservationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyCapacityReservation - Arguments for method ModifyCapacityReservation on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCapacityReservation on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyCapacityReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCapacityReservation.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyCapacityReservationResult = $ec2->ModifyCapacityReservation(
      CapacityReservationId => 'MyString',
      DryRun                => 1,                        # OPTIONAL
      EndDate               => '1970-01-01T01:00:00',    # OPTIONAL
      EndDateType           => 'unlimited',              # OPTIONAL
      InstanceCount         => 1,                        # OPTIONAL
    );

    # Results:
    my $Return = $ModifyCapacityReservationResult->Return;

    # Returns a L<Paws::EC2::ModifyCapacityReservationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyCapacityReservation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityReservationId => Str

The ID of the Capacity Reservation.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EndDate => Str

The date and time at which the Capacity Reservation expires. When a
Capacity Reservation expires, the reserved capacity is released and you
can no longer launch instances into it. The Capacity Reservation's
state changes to C<expired> when it reaches its end date and time.

The Capacity Reservation is cancelled within an hour from the specified
time. For example, if you specify 5/31/2019, 13:30:55, the Capacity
Reservation is guaranteed to end between 13:30:55 and 14:30:55 on
5/31/2019.

You must provide an C<EndDate> value if C<EndDateType> is C<limited>.
Omit C<EndDate> if C<EndDateType> is C<unlimited>.



=head2 EndDateType => Str

Indicates the way in which the Capacity Reservation ends. A Capacity
Reservation can have one of the following end types:

=over

=item *

C<unlimited> - The Capacity Reservation remains active until you
explicitly cancel it. Do not provide an C<EndDate> value if
C<EndDateType> is C<unlimited>.

=item *

C<limited> - The Capacity Reservation expires automatically at a
specified date and time. You must provide an C<EndDate> value if
C<EndDateType> is C<limited>.

=back


Valid values are: C<"unlimited">, C<"limited">

=head2 InstanceCount => Int

The number of instances for which to reserve capacity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCapacityReservation in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

