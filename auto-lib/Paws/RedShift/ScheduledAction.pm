
package Paws::RedShift::ScheduledAction;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has IamRole => (is => 'ro', isa => 'Str');
  has NextInvocations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ScheduledActionTime', traits => ['NameInRequest',]);
  has Schedule => (is => 'ro', isa => 'Str');
  has ScheduledActionDescription => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has TargetAction => (is => 'ro', isa => 'Paws::RedShift::ScheduledActionType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ScheduledAction

=head1 ATTRIBUTES


=head2 EndTime => Str

The end time in UTC when the schedule is no longer active. After this
time, the scheduled action does not trigger.


=head2 IamRole => Str

The IAM role to assume to run the scheduled action. This IAM role must
have permission to run the Amazon Redshift API operation in the
scheduled action. This IAM role must allow the Amazon Redshift
scheduler (Principal scheduler.redshift.amazonaws.com) to assume
permissions on your behalf. For more information about the IAM role to
use with the Amazon Redshift scheduler, see Using Identity-Based
Policies for Amazon Redshift
(https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 NextInvocations => ArrayRef[Str|Undef]

List of times when the scheduled action will run.


=head2 Schedule => Str

The schedule for a one-time (at format) or recurring (cron format)
scheduled action. Schedule invocations must be separated by at least
one hour.

Format of at expressions is "C<at(yyyy-mm-ddThh:mm:ss)>". For example,
"C<at(2016-03-04T17:27:00)>".

Format of cron expressions is "C<cron(Minutes Hours Day-of-month Month
Day-of-week Year)>". For example, "C<cron(0, 10, *, *, MON, *)>". For
more information, see Cron Expressions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions)
in the I<Amazon CloudWatch Events User Guide>.


=head2 ScheduledActionDescription => Str

The description of the scheduled action.


=head2 ScheduledActionName => Str

The name of the scheduled action.


=head2 StartTime => Str

The start time in UTC when the schedule is active. Before this time,
the scheduled action does not trigger.


=head2 State => Str

The state of the scheduled action. For example, C<DISABLED>.

Valid values are: C<"ACTIVE">, C<"DISABLED">
=head2 TargetAction => L<Paws::RedShift::ScheduledActionType>

A JSON format string of the Amazon Redshift API operation with input
parameters.

"C<{\"ResizeCluster\":{\"NodeType\":\"ds2.8xlarge\",\"ClusterIdentifier\":\"my-test-cluster\",\"NumberOfNodes\":3}}>".


=head2 _request_id => Str


=cut

