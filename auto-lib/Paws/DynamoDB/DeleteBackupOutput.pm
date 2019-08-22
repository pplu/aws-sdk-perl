
package Paws::DynamoDB::DeleteBackupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_BackupDescription/;
  has BackupDescription => (is => 'ro', isa => DynamoDB_BackupDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'BackupDescription' => {
                                                   'class' => 'Paws::DynamoDB::BackupDescription',
                                                   'type' => 'DynamoDB_BackupDescription'
                                                 }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DeleteBackupOutput

=head1 ATTRIBUTES


=head2 BackupDescription => DynamoDB_BackupDescription

Contains the description of the backup created for the table.


=head2 _request_id => Str


=cut

1;