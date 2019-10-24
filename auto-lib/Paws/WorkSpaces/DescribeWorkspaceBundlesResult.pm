# Generated from json/callresult_class.tt

package Paws::WorkSpaces::DescribeWorkspaceBundlesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_WorkspaceBundle/;
  has Bundles => (is => 'ro', isa => ArrayRef[WorkSpaces_WorkspaceBundle]);
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
               'Bundles' => {
                              'class' => 'Paws::WorkSpaces::WorkspaceBundle',
                              'type' => 'ArrayRef[WorkSpaces_WorkspaceBundle]'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceBundlesResult

=head1 ATTRIBUTES


=head2 Bundles => ArrayRef[WorkSpaces_WorkspaceBundle]

Information about the bundles.


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if there
are no more results available. This token is valid for one day and must
be used within that time frame.


=head2 _request_id => Str


=cut

1;