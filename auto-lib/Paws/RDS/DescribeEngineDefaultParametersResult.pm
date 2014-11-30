
package Paws::RDS::DescribeEngineDefaultParametersResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has EngineDefaults => (is => 'ro', isa => 'Paws::RDS::EngineDefaults');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeEngineDefaultParametersResult

=head1 ATTRIBUTES

=head2 EngineDefaults => Paws::RDS::EngineDefaults

  


=cut

