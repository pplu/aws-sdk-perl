# Generated from json/callresult_class.tt

package Paws::WorkSpaces::DescribeWorkspaceImagesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_WorkspaceImage/;
  has Images => (is => 'ro', isa => ArrayRef[WorkSpaces_WorkspaceImage]);
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
               'Images' => {
                             'class' => 'Paws::WorkSpaces::WorkspaceImage',
                             'type' => 'ArrayRef[WorkSpaces_WorkspaceImage]'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceImagesResult

=head1 ATTRIBUTES


=head2 Images => ArrayRef[WorkSpaces_WorkspaceImage]

Information about the images.


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if no
more results are available.


=head2 _request_id => Str


=cut

1;