# Generated from json/callresult_class.tt

package Paws::SSM::DescribeMaintenanceWindowTasksResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_MaintenanceWindowTask/;
  has NextToken => (is => 'ro', isa => Str);
  has Tasks => (is => 'ro', isa => ArrayRef[SSM_MaintenanceWindowTask]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tasks' => {
                            'class' => 'Paws::SSM::MaintenanceWindowTask',
                            'type' => 'ArrayRef[SSM_MaintenanceWindowTask]'
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

Paws::SSM::DescribeMaintenanceWindowTasksResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Tasks => ArrayRef[SSM_MaintenanceWindowTask]

Information about the tasks in the maintenance window.


=head2 _request_id => Str


=cut

1;