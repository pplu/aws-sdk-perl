
package Paws::CloudWatch::PutCompositeAlarm;
  use Moose;
  has ActionsEnabled => (is => 'ro', isa => 'Bool');
  has AlarmActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AlarmDescription => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str', required => 1);
  has AlarmRule => (is => 'ro', isa => 'Str', required => 1);
  has InsufficientDataActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OKActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutCompositeAlarm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutCompositeAlarm - Arguments for method PutCompositeAlarm on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutCompositeAlarm on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method PutCompositeAlarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutCompositeAlarm.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    $monitoring->PutCompositeAlarm(
      AlarmName      => 'MyAlarmName',
      AlarmRule      => 'MyAlarmRule',
      ActionsEnabled => 1,               # OPTIONAL
      AlarmActions   => [
        'MyResourceName', ...            # min: 1, max: 1024
      ],                                 # OPTIONAL
      AlarmDescription        => 'MyAlarmDescription',    # OPTIONAL
      InsufficientDataActions => [
        'MyResourceName', ...                             # min: 1, max: 1024
      ],                                                  # OPTIONAL
      OKActions => [
        'MyResourceName', ...                             # min: 1, max: 1024
      ],                                                  # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',                            # min: 1, max: 128
          Value => 'MyTagValue',                          # max: 256

        },
        ...
      ],                                                  # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/PutCompositeAlarm>

=head1 ATTRIBUTES


=head2 ActionsEnabled => Bool

Indicates whether actions should be executed during any changes to the
alarm state of the composite alarm. The default is C<TRUE>.



=head2 AlarmActions => ArrayRef[Str|Undef]

The actions to execute when this alarm transitions to the C<ALARM>
state from any other state. Each action is specified as an Amazon
Resource Name (ARN).

Valid Values: C<arn:aws:sns:I<region>:I<account-id>:I<sns-topic-name> >
| C<arn:aws:ssm:I<region>:I<account-id>:opsitem:I<severity>>



=head2 AlarmDescription => Str

The description for the composite alarm.



=head2 B<REQUIRED> AlarmName => Str

The name for the composite alarm. This name must be unique within the
Region.



=head2 B<REQUIRED> AlarmRule => Str

An expression that specifies which other alarms are to be evaluated to
determine this composite alarm's state. For each alarm that you
reference, you designate a function that specifies whether that alarm
needs to be in ALARM state, OK state, or INSUFFICIENT_DATA state. You
can use operators (AND, OR and NOT) to combine multiple functions in a
single expression. You can use parenthesis to logically group the
functions in your expression.

You can use either alarm names or ARNs to reference the other alarms
that are to be evaluated.

Functions can include the following:

=over

=item *

C<ALARM("I<alarm-name> or I<alarm-ARN>")> is TRUE if the named alarm is
in ALARM state.

=item *

C<OK("I<alarm-name> or I<alarm-ARN>")> is TRUE if the named alarm is in
OK state.

=item *

C<INSUFFICIENT_DATA("I<alarm-name> or I<alarm-ARN>")> is TRUE if the
named alarm is in INSUFFICIENT_DATA state.

=item *

C<TRUE> always evaluates to TRUE.

=item *

C<FALSE> always evaluates to FALSE.

=back

TRUE and FALSE are useful for testing a complex C<AlarmRule> structure,
and for testing your alarm actions.

Alarm names specified in C<AlarmRule> can be surrounded with
double-quotes ("), but do not have to be.

The following are some examples of C<AlarmRule>:

=over

=item *

C<ALARM(CPUUtilizationTooHigh) AND ALARM(DiskReadOpsTooHigh)> specifies
that the composite alarm goes into ALARM state only if both
CPUUtilizationTooHigh and DiskReadOpsTooHigh alarms are in ALARM state.

=item *

C<ALARM(CPUUtilizationTooHigh) AND NOT ALARM(DeploymentInProgress)>
specifies that the alarm goes to ALARM state if CPUUtilizationTooHigh
is in ALARM state and DeploymentInProgress is not in ALARM state. This
example reduces alarm noise during a known deployment window.

=item *

C<(ALARM(CPUUtilizationTooHigh) OR ALARM(DiskReadOpsTooHigh)) AND
OK(NetworkOutTooHigh)> goes into ALARM state if CPUUtilizationTooHigh
OR DiskReadOpsTooHigh is in ALARM state, and if NetworkOutTooHigh is in
OK state. This provides another example of using a composite alarm to
prevent noise. This rule ensures that you are not notified with an
alarm action on high CPU or disk usage if a known network problem is
also occurring.

=back

The C<AlarmRule> can specify as many as 100 "children" alarms. The
C<AlarmRule> expression can have as many as 500 elements. Elements are
child alarms, TRUE or FALSE statements, and parentheses.



=head2 InsufficientDataActions => ArrayRef[Str|Undef]

The actions to execute when this alarm transitions to the
C<INSUFFICIENT_DATA> state from any other state. Each action is
specified as an Amazon Resource Name (ARN).

Valid Values: C<arn:aws:sns:I<region>:I<account-id>:I<sns-topic-name>>



=head2 OKActions => ArrayRef[Str|Undef]

The actions to execute when this alarm transitions to an C<OK> state
from any other state. Each action is specified as an Amazon Resource
Name (ARN).

Valid Values: C<arn:aws:sns:I<region>:I<account-id>:I<sns-topic-name>>



=head2 Tags => ArrayRef[L<Paws::CloudWatch::Tag>]

A list of key-value pairs to associate with the composite alarm. You
can associate as many as 50 tags with an alarm.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions, by granting a user permission to
access or change only resources with certain tag values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutCompositeAlarm in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

