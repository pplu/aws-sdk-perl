# Generated from json/callresult_class.tt

package Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_WorkspaceConnectionStatus/;
  has NextToken => (is => 'ro', isa => Str);
  has WorkspacesConnectionStatus => (is => 'ro', isa => ArrayRef[WorkSpaces_WorkspaceConnectionStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WorkspacesConnectionStatus' => {
                                                 'class' => 'Paws::WorkSpaces::WorkspaceConnectionStatus',
                                                 'type' => 'ArrayRef[WorkSpaces_WorkspaceConnectionStatus]'
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

Paws::WorkSpaces::DescribeWorkspacesConnectionStatusResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if no
more results are available.


=head2 WorkspacesConnectionStatus => ArrayRef[WorkSpaces_WorkspaceConnectionStatus]

Information about the connection status of the WorkSpace.


=head2 _request_id => Str


=cut

1;