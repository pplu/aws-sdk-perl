# Generated from json/callresult_class.tt

package Paws::SSM::DescribeMaintenanceWindowExecutionTaskInvocationsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_MaintenanceWindowExecutionTaskInvocationIdentity/;
  has NextToken => (is => 'ro', isa => Str);
  has WindowExecutionTaskInvocationIdentities => (is => 'ro', isa => ArrayRef[SSM_MaintenanceWindowExecutionTaskInvocationIdentity]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'WindowExecutionTaskInvocationIdentities' => {
                                                              'class' => 'Paws::SSM::MaintenanceWindowExecutionTaskInvocationIdentity',
                                                              'type' => 'ArrayRef[SSM_MaintenanceWindowExecutionTaskInvocationIdentity]'
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

Paws::SSM::DescribeMaintenanceWindowExecutionTaskInvocationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 WindowExecutionTaskInvocationIdentities => ArrayRef[SSM_MaintenanceWindowExecutionTaskInvocationIdentity]

Information about the task invocation results per invocation.


=head2 _request_id => Str


=cut

1;