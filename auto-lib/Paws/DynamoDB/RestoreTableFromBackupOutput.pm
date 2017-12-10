
package Paws::DynamoDB::RestoreTableFromBackupOutput;
  use Moose;
  has TableDescription => (is => 'ro', isa => 'Paws::DynamoDB::TableDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::RestoreTableFromBackupOutput

=head1 ATTRIBUTES


=head2 TableDescription => L<Paws::DynamoDB::TableDescription>

The description of the table created from an existing backup.


=head2 _request_id => Str


=cut

1;