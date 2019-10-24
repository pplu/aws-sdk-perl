
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

A string returned in the response. Use the value returned in the
response as the value of the NextToken in a subsequent request to
retrieve the next set of results.


=head2 UserHierarchyGroupSummaryList => ArrayRef[Connect_HierarchyGroupSummary]

An array of C<HierarchyGroupSummary> objects.


=head2 _request_id => Str


=cut

