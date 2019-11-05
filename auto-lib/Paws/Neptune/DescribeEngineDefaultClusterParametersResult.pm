
package Paws::Neptune::DescribeEngineDefaultClusterParametersResult;
  use Moose;
  has EngineDefaults => (is => 'ro', isa => 'Paws::Neptune::EngineDefaults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DescribeEngineDefaultClusterParametersResult

=head1 ATTRIBUTES


=head2 EngineDefaults => L<Paws::Neptune::EngineDefaults>




=head2 _request_id => Str


=cut

