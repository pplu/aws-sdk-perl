# Generated from json/callresult_class.tt

package Paws::DAX::CreateParameterGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DAX::Types qw/DAX_ParameterGroup/;
  has ParameterGroup => (is => 'ro', isa => DAX_ParameterGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ParameterGroup' => {
                                     'class' => 'Paws::DAX::ParameterGroup',
                                     'type' => 'DAX_ParameterGroup'
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

Paws::DAX::CreateParameterGroupResponse

=head1 ATTRIBUTES


=head2 ParameterGroup => DAX_ParameterGroup

Represents the output of a I<CreateParameterGroup> action.


=head2 _request_id => Str


=cut

1;