# Generated from json/callresult_class.tt

package Paws::SSM::DescribeMaintenanceWindowExecutionTasksResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_MaintenanceWindowExecutionTaskIdentity/;
  has NextToken => (is => 'ro', isa => Str);
  has WindowExecutionTaskIdentities => (is => 'ro', isa => ArrayRef[SSM_MaintenanceWindowExecutionTaskIdentity]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'WindowExecutionTaskIdentities' => {
                                                    'type' => 'ArrayRef[SSM_MaintenanceWindowExecutionTaskIdentity]',
                                                    'class' => 'Paws::SSM::MaintenanceWindowExecutionTaskIdentity'
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

Paws::SSM::DescribeMaintenanceWindowExecutionTasksResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 WindowExecutionTaskIdentities => ArrayRef[SSM_MaintenanceWindowExecutionTaskIdentity]

Information about the task executions.


=head2 _request_id => Str


=cut

1;