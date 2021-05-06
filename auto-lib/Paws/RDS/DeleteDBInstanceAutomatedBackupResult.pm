
package Paws::RDS::DeleteDBInstanceAutomatedBackupResult;
  use Moose;
  has DBInstanceAutomatedBackup => (is => 'ro', isa => 'Paws::RDS::DBInstanceAutomatedBackup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBInstanceAutomatedBackupResult

=head1 ATTRIBUTES


=head2 DBInstanceAutomatedBackup => L<Paws::RDS::DBInstanceAutomatedBackup>




=head2 _request_id => Str


=cut

