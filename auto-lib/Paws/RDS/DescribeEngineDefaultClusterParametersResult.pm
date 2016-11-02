
package Paws::RDS::DescribeEngineDefaultClusterParametersResult;
  use Moose;
  has EngineDefaults => (is => 'ro', isa => 'Paws::RDS::EngineDefaults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeEngineDefaultClusterParametersResult

=head1 ATTRIBUTES


=head2 EngineDefaults => L<Paws::RDS::EngineDefaults>




=head2 _request_id => Str


=cut

