
package Paws::Connect::DescribeUserHierarchyGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw/Connect_HierarchyGroup/;
  has HierarchyGroup => (is => 'ro', isa => Connect_HierarchyGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HierarchyGroup' => {
                                     'class' => 'Paws::Connect::HierarchyGroup',
                                     'type' => 'Connect_HierarchyGroup'
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

Paws::Connect::DescribeUserHierarchyGroupResponse

=head1 ATTRIBUTES


=head2 HierarchyGroup => Connect_HierarchyGroup

Returns a C<HierarchyGroup> object.


=head2 _request_id => Str


=cut

