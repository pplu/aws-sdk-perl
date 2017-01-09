
package Paws::ElastiCache::DescribeEngineDefaultParametersResult;
  use Moose;
  has EngineDefaults => (is => 'ro', isa => 'Paws::ElastiCache::EngineDefaults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeEngineDefaultParametersResult

=head1 ATTRIBUTES


=head2 EngineDefaults => L<Paws::ElastiCache::EngineDefaults>




=head2 _request_id => Str


=cut

