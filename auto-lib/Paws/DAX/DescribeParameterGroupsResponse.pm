# Generated from json/callresult_class.tt

package Paws::DAX::DescribeParameterGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DAX::Types qw/DAX_ParameterGroup/;
  has NextToken => (is => 'ro', isa => Str);
  has ParameterGroups => (is => 'ro', isa => ArrayRef[DAX_ParameterGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ParameterGroups' => {
                                      'class' => 'Paws::DAX::ParameterGroup',
                                      'type' => 'ArrayRef[DAX_ParameterGroup]'
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


### main pod documentation begin ###

=head1 NAME

Paws::DAX::DescribeParameterGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 ParameterGroups => ArrayRef[DAX_ParameterGroup]

An array of parameter groups. Each element in the array represents one
parameter group.


=head2 _request_id => Str


=cut

1;