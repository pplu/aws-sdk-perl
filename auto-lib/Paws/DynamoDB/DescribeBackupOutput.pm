
package Paws::DynamoDB::DescribeBackupOutput;
  use Moose;
  has BackupDescription => (is => 'ro', isa => 'Paws::DynamoDB::BackupDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeBackupOutput

=head1 ATTRIBUTES


=head2 BackupDescription => L<Paws::DynamoDB::BackupDescription>

Contains the description of the backup created for the table.


=head2 _request_id => Str


=cut

1;