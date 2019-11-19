# Generated from callresult_class.tt

package Paws::RDS::DescribeEngineDefaultParametersResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_EngineDefaults/;
  has EngineDefaults => (is => 'ro', isa => RDS_EngineDefaults);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EngineDefaults' => {
                                     'type' => 'RDS_EngineDefaults',
                                     'class' => 'Paws::RDS::EngineDefaults'
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

Paws::RDS::DescribeEngineDefaultParametersResult

=head1 ATTRIBUTES


=head2 EngineDefaults => RDS_EngineDefaults




=head2 _request_id => Str


=cut

