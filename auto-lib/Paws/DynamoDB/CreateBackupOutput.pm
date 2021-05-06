
package Paws::DynamoDB::CreateBackupOutput;
  use Moose;
  has BackupDetails => (is => 'ro', isa => 'Paws::DynamoDB::BackupDetails');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::CreateBackupOutput

=head1 ATTRIBUTES


=head2 BackupDetails => L<Paws::DynamoDB::BackupDetails>

Contains the details of the backup created for the table.


=head2 _request_id => Str


=cut

1;