# Generated from callresult_class.tt

package Paws::ElastiCache::DescribeEngineDefaultParametersResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElastiCache::Types qw/ElastiCache_EngineDefaults/;
  has EngineDefaults => (is => 'ro', isa => ElastiCache_EngineDefaults);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EngineDefaults' => {
                                     'class' => 'Paws::ElastiCache::EngineDefaults',
                                     'type' => 'ElastiCache_EngineDefaults'
                                   }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeEngineDefaultParametersResult

=head1 ATTRIBUTES


=head2 EngineDefaults => ElastiCache_EngineDefaults




=head2 _request_id => Str


=cut

