
package Paws::Neptune::CreateDBClusterParameterGroupResult;
  use Moose;
  has DBClusterParameterGroup => (is => 'ro', isa => 'Paws::Neptune::DBClusterParameterGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CreateDBClusterParameterGroupResult

=head1 ATTRIBUTES


=head2 DBClusterParameterGroup => L<Paws::Neptune::DBClusterParameterGroup>




=head2 _request_id => Str


=cut

