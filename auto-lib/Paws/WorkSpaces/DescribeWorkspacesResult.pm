# Generated from json/callresult_class.tt

package Paws::WorkSpaces::DescribeWorkspacesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_Workspace/;
  has NextToken => (is => 'ro', isa => Str);
  has Workspaces => (is => 'ro', isa => ArrayRef[WorkSpaces_Workspace]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Workspaces' => {
                                 'class' => 'Paws::WorkSpaces::Workspace',
                                 'type' => 'ArrayRef[WorkSpaces_Workspace]'
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

Paws::WorkSpaces::DescribeWorkspacesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if no
more results are available.


=head2 Workspaces => ArrayRef[WorkSpaces_Workspace]

Information about the WorkSpaces.

Because CreateWorkspaces is an asynchronous operation, some of the
returned information could be incomplete.


=head2 _request_id => Str


=cut

1;