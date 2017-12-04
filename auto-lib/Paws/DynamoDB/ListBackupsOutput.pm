
package Paws::DynamoDB::ListBackupsOutput;
  use Moose;
  has BackupSummaries => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::BackupSummary]');
  has LastEvaluatedBackupArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListBackupsOutput

=head1 ATTRIBUTES


=head2 BackupSummaries => ArrayRef[L<Paws::DynamoDB::BackupSummary>]

List of C<BackupSummary> objects.


=head2 LastEvaluatedBackupArn => Str

Last evaluated BackupARN.


=head2 _request_id => Str


=cut

1;