# Generated from json/callresult_class.tt

package Paws::DAX::CreateSubnetGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DAX::Types qw/DAX_SubnetGroup/;
  has SubnetGroup => (is => 'ro', isa => DAX_SubnetGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SubnetGroup' => {
                                  'class' => 'Paws::DAX::SubnetGroup',
                                  'type' => 'DAX_SubnetGroup'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DAX::CreateSubnetGroupResponse

=head1 ATTRIBUTES


=head2 SubnetGroup => DAX_SubnetGroup

Represents the output of a I<CreateSubnetGroup> operation.


=head2 _request_id => Str


=cut

1;