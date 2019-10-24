
package Paws::WorkDocs::DescribeGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkDocs::Types qw/WorkDocs_GroupMetadata/;
  has Groups => (is => 'ro', isa => ArrayRef[WorkDocs_GroupMetadata]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Groups' => {
                             'class' => 'Paws::WorkDocs::GroupMetadata',
                             'type' => 'ArrayRef[WorkDocs_GroupMetadata]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeGroupsResponse

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[WorkDocs_GroupMetadata]

The list of groups.


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 _request_id => Str


=cut

