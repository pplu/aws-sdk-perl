# Generated from json/callresult_class.tt

package Paws::WorkSpaces::CreateWorkspacesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_Workspace WorkSpaces_FailedCreateWorkspaceRequest/;
  has FailedRequests => (is => 'ro', isa => ArrayRef[WorkSpaces_FailedCreateWorkspaceRequest]);
  has PendingRequests => (is => 'ro', isa => ArrayRef[WorkSpaces_Workspace]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PendingRequests' => {
                                      'class' => 'Paws::WorkSpaces::Workspace',
                                      'type' => 'ArrayRef[WorkSpaces_Workspace]'
                                    },
               'FailedRequests' => {
                                     'class' => 'Paws::WorkSpaces::FailedCreateWorkspaceRequest',
                                     'type' => 'ArrayRef[WorkSpaces_FailedCreateWorkspaceRequest]'
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

Paws::WorkSpaces::CreateWorkspacesResult

=head1 ATTRIBUTES


=head2 FailedRequests => ArrayRef[WorkSpaces_FailedCreateWorkspaceRequest]

Information about the WorkSpaces that could not be created.


=head2 PendingRequests => ArrayRef[WorkSpaces_Workspace]

Information about the WorkSpaces that were created.

Because this operation is asynchronous, the identifier returned is not
immediately available for use with other operations. For example, if
you call DescribeWorkspaces before the WorkSpace is created, the
information returned can be incomplete.


=head2 _request_id => Str


=cut

1;