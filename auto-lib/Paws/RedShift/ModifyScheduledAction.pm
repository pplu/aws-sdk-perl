
package Paws::RedShift::ModifyScheduledAction;
  use Moose;
  has Enable => (is => 'ro', isa => 'Bool');
  has EndTime => (is => 'ro', isa => 'Str');
  has IamRole => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Str');
  has ScheduledActionDescription => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
  has TargetAction => (is => 'ro', isa => 'Paws::RedShift::ScheduledActionType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyScheduledAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ScheduledAction');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyScheduledActionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyScheduledAction - Arguments for method ModifyScheduledAction on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyScheduledAction on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyScheduledAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyScheduledAction.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ScheduledAction = $redshift->ModifyScheduledAction(
      ScheduledActionName        => 'MyString',
      Enable                     => 1,                        # OPTIONAL
      EndTime                    => '1970-01-01T01:00:00',    # OPTIONAL
      IamRole                    => 'MyString',               # OPTIONAL
      Schedule                   => 'MyString',               # OPTIONAL
      ScheduledActionDescription => 'MyString',               # OPTIONAL
      StartTime                  => '1970-01-01T01:00:00',    # OPTIONAL
      TargetAction               => {
        ResizeCluster => {
          ClusterIdentifier => 'MyString',
          NumberOfNodes     => 1,
          Classic           => 1,
          ClusterType       => 'MyString',
          NodeType          => 'MyString',
        },                                                    # OPTIONAL
      },    # OPTIONAL
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyScheduledAction>

=head1 ATTRIBUTES


=head2 Enable => Bool

A modified enable flag of the scheduled action. If true, the scheduled
action is active. If false, the scheduled action is disabled.



=head2 EndTime => Str

A modified end time of the scheduled action. For more information about
this parameter, see ScheduledAction.



=head2 IamRole => Str

A different IAM role to assume to run the target action. For more
information about this parameter, see ScheduledAction.



=head2 Schedule => Str

A modified schedule in either C<at( )> or C<cron( )> format. For more
information about this parameter, see ScheduledAction.



=head2 ScheduledActionDescription => Str

A modified description of the scheduled action.



=head2 B<REQUIRED> ScheduledActionName => Str

The name of the scheduled action to modify.



=head2 StartTime => Str

A modified start time of the scheduled action. For more information
about this parameter, see ScheduledAction.



=head2 TargetAction => L<Paws::RedShift::ScheduledActionType>

A modified JSON format of the scheduled action. For more information
about this parameter, see ScheduledAction.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyScheduledAction in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

