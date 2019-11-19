# Generated from json/callargs_class.tt

package Paws::SSM::UpdateMaintenanceWindow;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::SSM::Types qw//;
  has AllowUnassociatedTargets => (is => 'ro', isa => Bool, predicate => 1);
  has Cutoff => (is => 'ro', isa => Int, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Duration => (is => 'ro', isa => Int, predicate => 1);
  has Enabled => (is => 'ro', isa => Bool, predicate => 1);
  has EndDate => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has Replace => (is => 'ro', isa => Bool, predicate => 1);
  has Schedule => (is => 'ro', isa => Str, predicate => 1);
  has ScheduleTimezone => (is => 'ro', isa => Str, predicate => 1);
  has StartDate => (is => 'ro', isa => Str, predicate => 1);
  has WindowId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateMaintenanceWindow');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::UpdateMaintenanceWindowResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Schedule' => {
                               'type' => 'Str'
                             },
               'Replace' => {
                              'type' => 'Bool'
                            },
               'AllowUnassociatedTargets' => {
                                               'type' => 'Bool'
                                             },
               'StartDate' => {
                                'type' => 'Str'
                              },
               'Description' => {
                                  'type' => 'Str'
                                },
               'WindowId' => {
                               'type' => 'Str'
                             },
               'EndDate' => {
                              'type' => 'Str'
                            },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'ScheduleTimezone' => {
                                       'type' => 'Str'
                                     },
               'Duration' => {
                               'type' => 'Int'
                             },
               'Cutoff' => {
                             'type' => 'Int'
                           }
             },
  'IsRequired' => {
                    'WindowId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateMaintenanceWindow - Arguments for method UpdateMaintenanceWindow on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMaintenanceWindow on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateMaintenanceWindow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMaintenanceWindow.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateMaintenanceWindowResult = $ssm->UpdateMaintenanceWindow(
      WindowId                 => 'MyMaintenanceWindowId',
      AllowUnassociatedTargets => 1,                                  # OPTIONAL
      Cutoff                   => 1,                                  # OPTIONAL
      Description              => 'MyMaintenanceWindowDescription',   # OPTIONAL
      Duration                 => 1,                                  # OPTIONAL
      Enabled                  => 1,                                  # OPTIONAL
      EndDate          => 'MyMaintenanceWindowStringDateTime',        # OPTIONAL
      Name             => 'MyMaintenanceWindowName',                  # OPTIONAL
      Replace          => 1,                                          # OPTIONAL
      Schedule         => 'MyMaintenanceWindowSchedule',              # OPTIONAL
      ScheduleTimezone => 'MyMaintenanceWindowTimezone',              # OPTIONAL
      StartDate        => 'MyMaintenanceWindowStringDateTime',        # OPTIONAL
    );

    # Results:
    my $AllowUnassociatedTargets =
      $UpdateMaintenanceWindowResult->AllowUnassociatedTargets;
    my $Cutoff           = $UpdateMaintenanceWindowResult->Cutoff;
    my $Description      = $UpdateMaintenanceWindowResult->Description;
    my $Duration         = $UpdateMaintenanceWindowResult->Duration;
    my $Enabled          = $UpdateMaintenanceWindowResult->Enabled;
    my $EndDate          = $UpdateMaintenanceWindowResult->EndDate;
    my $Name             = $UpdateMaintenanceWindowResult->Name;
    my $Schedule         = $UpdateMaintenanceWindowResult->Schedule;
    my $ScheduleTimezone = $UpdateMaintenanceWindowResult->ScheduleTimezone;
    my $StartDate        = $UpdateMaintenanceWindowResult->StartDate;
    my $WindowId         = $UpdateMaintenanceWindowResult->WindowId;

    # Returns a L<Paws::SSM::UpdateMaintenanceWindowResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateMaintenanceWindow>

=head1 ATTRIBUTES


=head2 AllowUnassociatedTargets => Bool

Whether targets must be registered with the maintenance window before
tasks can be defined for those targets.



=head2 Cutoff => Int

The number of hours before the end of the maintenance window that
Systems Manager stops scheduling new tasks for execution.



=head2 Description => Str

An optional description for the update request.



=head2 Duration => Int

The duration of the maintenance window in hours.



=head2 Enabled => Bool

Whether the maintenance window is enabled.



=head2 EndDate => Str

The date and time, in ISO-8601 Extended format, for when you want the
maintenance window to become inactive. EndDate allows you to set a date
and time in the future when the maintenance window will no longer run.



=head2 Name => Str

The name of the maintenance window.



=head2 Replace => Bool

If True, then all fields that are required by the
CreateMaintenanceWindow action are also required for this API request.
Optional fields that are not specified are set to null.



=head2 Schedule => Str

The schedule of the maintenance window in the form of a cron or rate
expression.



=head2 ScheduleTimezone => Str

The time zone that the scheduled maintenance window executions are
based on, in Internet Assigned Numbers Authority (IANA) format. For
example: "America/Los_Angeles", "etc/UTC", or "Asia/Seoul". For more
information, see the Time Zone Database
(https://www.iana.org/time-zones) on the IANA website.



=head2 StartDate => Str

The time zone that the scheduled maintenance window executions are
based on, in Internet Assigned Numbers Authority (IANA) format. For
example: "America/Los_Angeles", "etc/UTC", or "Asia/Seoul". For more
information, see the Time Zone Database
(https://www.iana.org/time-zones) on the IANA website.



=head2 B<REQUIRED> WindowId => Str

The ID of the maintenance window to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMaintenanceWindow in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

