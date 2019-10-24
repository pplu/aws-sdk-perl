# Generated from callresult_class.tt

package Paws::Neptune::DescribeEngineDefaultParametersResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Neptune::Types qw/Neptune_EngineDefaults/;
  has EngineDefaults => (is => 'ro', isa => Neptune_EngineDefaults);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EngineDefaults' => {
                                     'class' => 'Paws::Neptune::EngineDefaults',
                                     'type' => 'Neptune_EngineDefaults'
                                   }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DescribeEngineDefaultParametersResult

=head1 ATTRIBUTES


=head2 EngineDefaults => Neptune_EngineDefaults




=head2 _request_id => Str


=cut

