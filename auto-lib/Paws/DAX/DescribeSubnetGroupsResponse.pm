# Generated from json/callresult_class.tt

package Paws::DAX::DescribeSubnetGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DAX::Types qw/DAX_SubnetGroup/;
  has NextToken => (is => 'ro', isa => Str);
  has SubnetGroups => (is => 'ro', isa => ArrayRef[DAX_SubnetGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SubnetGroups' => {
                                   'type' => 'ArrayRef[DAX_SubnetGroup]',
                                   'class' => 'Paws::DAX::SubnetGroup'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DAX::DescribeSubnetGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 SubnetGroups => ArrayRef[DAX_SubnetGroup]

An array of subnet groups. Each element in the array represents a
single subnet group.


=head2 _request_id => Str


=cut

1;