
package Paws::EC2::DescribePlacementGroupsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_PlacementGroup/;
  has PlacementGroups => (is => 'ro', isa => ArrayRef[EC2_PlacementGroup]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'PlacementGroups' => {
                                      'class' => 'Paws::EC2::PlacementGroup',
                                      'type' => 'ArrayRef[EC2_PlacementGroup]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'PlacementGroups' => 'placementGroupSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribePlacementGroupsResult

=head1 ATTRIBUTES


=head2 PlacementGroups => ArrayRef[EC2_PlacementGroup]

Information about the placement groups.


=head2 _request_id => Str


=cut

