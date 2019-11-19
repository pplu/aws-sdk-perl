# Generated from json/callresult_class.tt

package Paws::SSM::DescribeMaintenanceWindowScheduleResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_ScheduledWindowExecution/;
  has NextToken => (is => 'ro', isa => Str);
  has ScheduledWindowExecutions => (is => 'ro', isa => ArrayRef[SSM_ScheduledWindowExecution]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ScheduledWindowExecutions' => {
                                                'type' => 'ArrayRef[SSM_ScheduledWindowExecution]',
                                                'class' => 'Paws::SSM::ScheduledWindowExecution'
                                              },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowScheduleResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. (You use this token in
the next call.)


=head2 ScheduledWindowExecutions => ArrayRef[SSM_ScheduledWindowExecution]

Information about maintenance window executions scheduled for the
specified time range.


=head2 _request_id => Str


=cut

1;