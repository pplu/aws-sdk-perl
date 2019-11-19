# Generated from json/callresult_class.tt

package Paws::SSM::GetParameterResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_Parameter/;
  has Parameter => (is => 'ro', isa => SSM_Parameter);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameter' => {
                                'type' => 'SSM_Parameter',
                                'class' => 'Paws::SSM::Parameter'
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

Paws::SSM::GetParameterResult

=head1 ATTRIBUTES


=head2 Parameter => SSM_Parameter

Information about a parameter.


=head2 _request_id => Str


=cut

1;