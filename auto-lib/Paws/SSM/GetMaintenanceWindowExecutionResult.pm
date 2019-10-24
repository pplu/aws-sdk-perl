# Generated from json/callresult_class.tt

package Paws::SSM::GetMaintenanceWindowExecutionResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SSM::Types qw//;
  has EndTime => (is => 'ro', isa => Str);
  has StartTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has StatusDetails => (is => 'ro', isa => Str);
  has TaskIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has WindowExecutionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskIds' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'WindowExecutionId' => {
                                        'type' => 'Str'
                                      },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'StatusDetails' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowExecutionResult

=head1 ATTRIBUTES


=head2 EndTime => Str

The time the maintenance window finished running.


=head2 StartTime => Str

The time the maintenance window started running.


=head2 Status => Str

The status of the maintenance window execution.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">, C<"TIMED_OUT">, C<"CANCELLING">, C<"CANCELLED">, C<"SKIPPED_OVERLAPPING">
=head2 StatusDetails => Str

The details explaining the Status. Only available for certain status
values.


=head2 TaskIds => ArrayRef[Str|Undef]

The ID of the task executions from the maintenance window execution.


=head2 WindowExecutionId => Str

The ID of the maintenance window execution.


=head2 _request_id => Str


=cut

1;