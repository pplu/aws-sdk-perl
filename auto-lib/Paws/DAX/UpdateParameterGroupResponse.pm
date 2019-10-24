# Generated from json/callresult_class.tt

package Paws::DAX::UpdateParameterGroupResponse;
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

Paws::DAX::UpdateParameterGroupResponse

=head1 ATTRIBUTES


=head2 ParameterGroup => DAX_ParameterGroup

The parameter group that has been modified.


=head2 _request_id => Str


=cut

1;