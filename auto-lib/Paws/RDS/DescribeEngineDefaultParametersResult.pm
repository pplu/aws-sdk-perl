
package Paws::RDS::DescribeEngineDefaultParametersResult;
  use Moose;
  has EngineDefaults => (is => 'ro', isa => 'Paws::RDS::EngineDefaults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeEngineDefaultParametersResult

=head1 ATTRIBUTES


=head2 EngineDefaults => L<Paws::RDS::EngineDefaults>




=head2 _request_id => Str


=cut

