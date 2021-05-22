
package Paws::IoT::DescribeScheduledAuditResponse;
  use Moose;
  has DayOfMonth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dayOfMonth');
  has DayOfWeek => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dayOfWeek');
  has Frequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'frequency');
  has ScheduledAuditArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scheduledAuditArn');
  has ScheduledAuditName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scheduledAuditName');
  has TargetCheckNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targetCheckNames');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeScheduledAuditResponse

=head1 ATTRIBUTES


=head2 DayOfMonth => Str

The day of the month on which the scheduled audit takes place. This is
will be C<1> through C<31> or C<LAST>. If days C<29>-C<31> are
specified, and the month does not have that many days, the audit takes
place on the C<LAST> day of the month.


=head2 DayOfWeek => Str

The day of the week on which the scheduled audit takes place, either
one of C<SUN>, C<MON>, C<TUE>, C<WED>, C<THU>, C<FRI>, or C<SAT>.

Valid values are: C<"SUN">, C<"MON">, C<"TUE">, C<"WED">, C<"THU">, C<"FRI">, C<"SAT">
=head2 Frequency => Str

How often the scheduled audit takes place, either one of C<DAILY>,
C<WEEKLY>, C<BIWEEKLY>, or C<MONTHLY>. The start time of each audit is
determined by the system.

Valid values are: C<"DAILY">, C<"WEEKLY">, C<"BIWEEKLY">, C<"MONTHLY">
=head2 ScheduledAuditArn => Str

The ARN of the scheduled audit.


=head2 ScheduledAuditName => Str

The name of the scheduled audit.


=head2 TargetCheckNames => ArrayRef[Str|Undef]

Which checks are performed during the scheduled audit. Checks must be
enabled for your account. (Use C<DescribeAccountAuditConfiguration> to
see the list of all checks, including those that are enabled or use
C<UpdateAccountAuditConfiguration> to select which checks are enabled.)


=head2 _request_id => Str


=cut

