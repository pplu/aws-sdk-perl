
package Paws::RDS::CreateDBSnapshotResult;
  use Moose;
  has DBSnapshot => (is => 'ro', isa => 'Paws::RDS::DBSnapshot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBSnapshotResult

=head1 ATTRIBUTES


=head2 DBSnapshot => L<Paws::RDS::DBSnapshot>




=head2 _request_id => Str


=cut

