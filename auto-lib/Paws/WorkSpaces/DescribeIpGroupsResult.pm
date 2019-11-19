# Generated from json/callresult_class.tt

package Paws::WorkSpaces::DescribeIpGroupsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_WorkspacesIpGroup/;
  has NextToken => (is => 'ro', isa => Str);
  has Result => (is => 'ro', isa => ArrayRef[WorkSpaces_WorkspacesIpGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Result' => {
                             'class' => 'Paws::WorkSpaces::WorkspacesIpGroup',
                             'type' => 'ArrayRef[WorkSpaces_WorkspacesIpGroup]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::WorkSpaces::DescribeIpGroupsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if no
more results are available.


=head2 Result => ArrayRef[WorkSpaces_WorkspacesIpGroup]

Information about the IP access control groups.


=head2 _request_id => Str


=cut

1;