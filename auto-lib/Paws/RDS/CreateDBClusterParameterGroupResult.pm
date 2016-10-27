
package Paws::RDS::CreateDBClusterParameterGroupResult;
  use Moose;
  has DBClusterParameterGroup => (is => 'ro', isa => 'Paws::RDS::DBClusterParameterGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBClusterParameterGroupResult

=head1 ATTRIBUTES


=head2 DBClusterParameterGroup => L<Paws::RDS::DBClusterParameterGroup>






=cut

