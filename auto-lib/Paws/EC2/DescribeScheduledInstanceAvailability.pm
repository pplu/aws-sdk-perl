
package Paws::EC2::DescribeScheduledInstanceAvailability;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has FirstSlotStartTimeRange => (is => 'ro', isa => 'Paws::EC2::SlotDateTimeRangeRequest', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has MaxSlotDurationInHours => (is => 'ro', isa => 'Int');
  has MinSlotDurationInHours => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Recurrence => (is => 'ro', isa => 'Paws::EC2::ScheduledInstanceRecurrenceRequest', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScheduledInstanceAvailability');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeScheduledInstanceAvailabilityResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeScheduledInstanceAvailability - Arguments for method DescribeScheduledInstanceAvailability on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScheduledInstanceAvailability on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeScheduledInstanceAvailability.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScheduledInstanceAvailability.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe an available schedule
    # This example describes a schedule that occurs every week on Sunday,
    # starting on the specified date. Note that the output contains a single
    # schedule as an example.
    my $DescribeScheduledInstanceAvailabilityResult =
      $ec2->DescribeScheduledInstanceAvailability(
      {
        'FirstSlotStartTimeRange' => {
          'EarliestTime' => '2016-01-31T00:00:00Z',
          'LatestTime'   => '2016-01-31T04:00:00Z'
        },
        'Recurrence' => {
          'Frequency'      => 'Weekly',
          'Interval'       => 1,
          'OccurrenceDays' => [1]
        }
      }
      );

    # Results:
    my $ScheduledInstanceAvailabilitySet =
      $DescribeScheduledInstanceAvailabilityResult
      ->ScheduledInstanceAvailabilitySet;

   # Returns a L<Paws::EC2::DescribeScheduledInstanceAvailabilityResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeScheduledInstanceAvailability>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<availability-zone> - The Availability Zone (for example,
C<us-west-2a>).

=item *

C<instance-type> - The instance type (for example, C<c4.large>).

=item *

C<network-platform> - The network platform (C<EC2-Classic> or
C<EC2-VPC>).

=item *

C<platform> - The platform (C<Linux/UNIX> or C<Windows>).

=back




=head2 B<REQUIRED> FirstSlotStartTimeRange => L<Paws::EC2::SlotDateTimeRangeRequest>

The time period for the first schedule to start.



=head2 MaxResults => Int

The maximum number of results to return in a single call. This value
can be between 5 and 300. The default value is 300. To retrieve the
remaining results, make another call with the returned C<NextToken>
value.



=head2 MaxSlotDurationInHours => Int

The maximum available duration, in hours. This value must be greater
than C<MinSlotDurationInHours> and less than 1,720.



=head2 MinSlotDurationInHours => Int

The minimum available duration, in hours. The minimum required duration
is 1,200 hours per year. For example, the minimum daily schedule is 4
hours, the minimum weekly schedule is 24 hours, and the minimum monthly
schedule is 100 hours.



=head2 NextToken => Str

The token for the next set of results.



=head2 B<REQUIRED> Recurrence => L<Paws::EC2::ScheduledInstanceRecurrenceRequest>

The schedule recurrence.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScheduledInstanceAvailability in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

