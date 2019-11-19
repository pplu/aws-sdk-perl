# Generated from callresult_class.tt

package Paws::DocDB::DescribeEngineDefaultClusterParametersResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DocDB::Types qw/DocDB_EngineDefaults/;
  has EngineDefaults => (is => 'ro', isa => DocDB_EngineDefaults);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EngineDefaults' => {
                                     'type' => 'DocDB_EngineDefaults',
                                     'class' => 'Paws::DocDB::EngineDefaults'
                                   }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DescribeEngineDefaultClusterParametersResult

=head1 ATTRIBUTES


=head2 EngineDefaults => DocDB_EngineDefaults




=head2 _request_id => Str


=cut

