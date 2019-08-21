
package Paws::DynamoDB::DeleteBackupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::TypeLibrary qw/PawsDynamoDBBackupDescription/;
  has BackupDescription => (is => 'ro', isa => PawsDynamoDBBackupDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'BackupDescription' => {
                                                   'class' => 'Paws::DynamoDB::BackupDescription',
                                                   'type' => 'PawsDynamoDBBackupDescription'
                                                 }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DeleteBackupOutput

=head1 ATTRIBUTES


=head2 BackupDescription => PawsDynamoDBBackupDescription

Contains the description of the backup created for the table.


=head2 _request_id => Str


=cut

1;