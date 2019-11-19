
package Paws::Connect::ListUserHierarchyGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Connect::Types qw/Connect_HierarchyGroupSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has UserHierarchyGroupSummaryList => (is => 'ro', isa => ArrayRef[Connect_HierarchyGroupSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserHierarchyGroupSummaryList' => {
                                                    'class' => 'Paws::Connect::HierarchyGroupSummary',
                                                    'type' => 'ArrayRef[Connect_HierarchyGroupSummary]'
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListUserHierarchyGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 UserHierarchyGroupSummaryList => ArrayRef[Connect_HierarchyGroupSummary]

Information about the hierarchy groups.


=head2 _request_id => Str


=cut

