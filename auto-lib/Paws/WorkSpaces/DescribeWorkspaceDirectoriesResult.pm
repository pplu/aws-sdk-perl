# Generated from json/callresult_class.tt

package Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_WorkspaceDirectory/;
  has Directories => (is => 'ro', isa => ArrayRef[WorkSpaces_WorkspaceDirectory]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Directories' => {
                                  'class' => 'Paws::WorkSpaces::WorkspaceDirectory',
                                  'type' => 'ArrayRef[WorkSpaces_WorkspaceDirectory]'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceDirectoriesResult

=head1 ATTRIBUTES


=head2 Directories => ArrayRef[WorkSpaces_WorkspaceDirectory]

Information about the directories.


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if no
more results are available.


=head2 _request_id => Str


=cut

1;