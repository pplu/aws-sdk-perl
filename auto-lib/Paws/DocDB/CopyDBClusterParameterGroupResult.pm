
package Paws::DocDB::CopyDBClusterParameterGroupResult;
  use Moose;
  has DBClusterParameterGroup => (is => 'ro', isa => 'Paws::DocDB::DBClusterParameterGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CopyDBClusterParameterGroupResult

=head1 ATTRIBUTES


=head2 DBClusterParameterGroup => L<Paws::DocDB::DBClusterParameterGroup>




=head2 _request_id => Str


=cut

