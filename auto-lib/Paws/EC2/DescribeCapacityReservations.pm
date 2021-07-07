
package Paws::EC2::DescribeCapacityReservations;
  use Moose;
  has CapacityReservationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'CapacityReservationId' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCapacityReservations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeCapacityReservationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeCapacityReservations - Arguments for method DescribeCapacityReservations on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCapacityReservations on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeCapacityReservations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCapacityReservations.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeCapacityReservationsResult = $ec2->DescribeCapacityReservations(
      CapacityReservationIds => [ 'MyCapacityReservationId', ... ],   # OPTIONAL
      DryRun                 => 1,                                    # OPTIONAL
      Filters                => [
        {
          Name   => 'MyString',                                       # OPTIONAL
          Values => [
            'MyString', ...                                           # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CapacityReservations =
      $DescribeCapacityReservationsResult->CapacityReservations;
    my $NextToken = $DescribeCapacityReservationsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeCapacityReservationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeCapacityReservations>

=head1 ATTRIBUTES


=head2 CapacityReservationIds => ArrayRef[Str|Undef]

The ID of the Capacity Reservation.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<instance-type> - The type of instance for which the Capacity
Reservation reserves capacity.

=item *

C<owner-id> - The ID of the AWS account that owns the Capacity
Reservation.

=item *

C<availability-zone-id> - The Availability Zone ID of the Capacity
Reservation.

=item *

C<instance-platform> - The type of operating system for which the
Capacity Reservation reserves capacity.

=item *

C<availability-zone> - The Availability Zone ID of the Capacity
Reservation.

=item *

C<tenancy> - Indicates the tenancy of the Capacity Reservation. A
Capacity Reservation can have one of the following tenancy settings:

=over

=item *

C<default> - The Capacity Reservation is created on hardware that is
shared with other AWS accounts.

=item *

C<dedicated> - The Capacity Reservation is created on single-tenant
hardware that is dedicated to a single AWS account.

=back

=item *

C<state> - The current state of the Capacity Reservation. A Capacity
Reservation can be in one of the following states:

=over

=item *

C<active>- The Capacity Reservation is active and the capacity is
available for your use.

=item *

C<expired> - The Capacity Reservation expired automatically at the date
and time specified in your request. The reserved capacity is no longer
available for your use.

=item *

C<cancelled> - The Capacity Reservation was cancelled. The reserved
capacity is no longer available for your use.

=item *

C<pending> - The Capacity Reservation request was successful but the
capacity provisioning is still pending.

=item *

C<failed> - The Capacity Reservation request has failed. A request
might fail due to invalid request parameters, capacity constraints, or
instance limit constraints. Failed requests are retained for 60
minutes.

=back

=item *

C<start-date> - The date and time at which the Capacity Reservation was
started.

=item *

C<end-date> - The date and time at which the Capacity Reservation
expires. When a Capacity Reservation expires, the reserved capacity is
released and you can no longer launch instances into it. The Capacity
Reservation's state changes to expired when it reaches its end date and
time.

=item *

C<end-date-type> - Indicates the way in which the Capacity Reservation
ends. A Capacity Reservation can have one of the following end types:

=over

=item *

C<unlimited> - The Capacity Reservation remains active until you
explicitly cancel it.

=item *

C<limited> - The Capacity Reservation expires automatically at a
specified date and time.

=back

=item *

C<instance-match-criteria> - Indicates the type of instance launches
that the Capacity Reservation accepts. The options include:

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

=back




=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the returned C<nextToken> value. This value can be between 5 and 500.
If C<maxResults> is given a larger value than 500, you receive an
error.



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCapacityReservations in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

