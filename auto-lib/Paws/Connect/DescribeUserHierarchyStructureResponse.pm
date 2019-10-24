
package Paws::Connect::DescribeUserHierarchyStructureResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw/Connect_HierarchyStructure/;
  has HierarchyStructure => (is => 'ro', isa => Connect_HierarchyStructure);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HierarchyStructure' => {
                                         'class' => 'Paws::Connect::HierarchyStructure',
                                         'type' => 'Connect_HierarchyStructure'
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

Paws::Connect::DescribeUserHierarchyStructureResponse

=head1 ATTRIBUTES


=head2 HierarchyStructure => Connect_HierarchyStructure

A C<HierarchyStructure> object.


=head2 _request_id => Str


=cut

