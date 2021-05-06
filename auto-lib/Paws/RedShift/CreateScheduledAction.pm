
package Paws::RedShift::CreateScheduledAction;
  use Moose;
  has Enable => (is => 'ro', isa => 'Bool');
  has EndTime => (is => 'ro', isa => 'Str');
  has IamRole => (is => 'ro', isa => 'Str', required => 1);
  has Schedule => (is => 'ro', isa => 'Str', required => 1);
  has ScheduledActionDescription => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
  has TargetAction => (is => 'ro', isa => 'Paws::RedShift::ScheduledActionType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateScheduledAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ScheduledAction');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateScheduledActionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateScheduledAction - Arguments for method CreateScheduledAction on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateScheduledAction on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateScheduledAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateScheduledAction.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ScheduledAction = $redshift->CreateScheduledAction(
      IamRole             => 'MyString',
      Schedule            => 'MyString',
      ScheduledActionName => 'MyString',
      TargetAction        => {
        ResizeCluster => {
          ClusterIdentifier => 'MyString',
          NumberOfNodes     => 1,
          Classic           => 1,            # OPTIONAL
          ClusterType       => 'MyString',
          NodeType          => 'MyString',
        },    # OPTIONAL
      },
      Enable                     => 1,                        # OPTIONAL
      EndTime                    => '1970-01-01T01:00:00',    # OPTIONAL
      ScheduledActionDescription => 'MyString',               # OPTIONAL
      StartTime                  => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $EndTime         = $ScheduledAction->EndTime;
    my $IamRole         = $ScheduledAction->IamRole;
    my $NextInvocations = $ScheduledAction->NextInvocations;
    my $Schedule        = $ScheduledAction->Schedule;
    my $ScheduledActionDescription =
      $ScheduledAction->ScheduledActionDescription;
    my $ScheduledActionName = $ScheduledAction->ScheduledActionName;
    my $StartTime           = $ScheduledAction->StartTime;
    my $State               = $ScheduledAction->State;
    my $TargetAction        = $ScheduledAction->TargetAction;

    # Returns a L<Paws::RedShift::ScheduledAction> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateScheduledAction>

=head1 ATTRIBUTES


=head2 Enable => Bool

If true, the schedule is enabled. If false, the scheduled action does
not trigger. For more information about C<state> of the scheduled
action, see ScheduledAction.



=head2 EndTime => Str

The end time in UTC of the scheduled action. After this time, the
scheduled action does not trigger. For more information about this
parameter, see ScheduledAction.



=head2 B<REQUIRED> IamRole => Str

The IAM role to assume to run the target action. For more information
about this parameter, see ScheduledAction.



=head2 B<REQUIRED> Schedule => Str

The schedule in C<at( )> or C<cron( )> format. For more information
about this parameter, see ScheduledAction.



=head2 ScheduledActionDescription => Str

The description of the scheduled action.



=head2 B<REQUIRED> ScheduledActionName => Str

The name of the scheduled action. The name must be unique within an
account. For more information about this parameter, see
ScheduledAction.



=head2 StartTime => Str

The start time in UTC of the scheduled action. Before this time, the
scheduled action does not trigger. For more information about this
parameter, see ScheduledAction.



=head2 B<REQUIRED> TargetAction => L<Paws::RedShift::ScheduledActionType>

A JSON format string of the Amazon Redshift API operation with input
parameters. For more information about this parameter, see
ScheduledAction.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateScheduledAction in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

