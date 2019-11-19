# Generated from json/callresult_class.tt

package Paws::SSM::DescribeMaintenanceWindowExecutionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_MaintenanceWindowExecution/;
  has NextToken => (is => 'ro', isa => Str);
  has WindowExecutions => (is => 'ro', isa => ArrayRef[SSM_MaintenanceWindowExecution]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WindowExecutions' => {
                                       'type' => 'ArrayRef[SSM_MaintenanceWindowExecution]',
                                       'class' => 'Paws::SSM::MaintenanceWindowExecution'
                                     },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowExecutionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 WindowExecutions => ArrayRef[SSM_MaintenanceWindowExecution]

Information about the maintenance window executions.


=head2 _request_id => Str


=cut

1;