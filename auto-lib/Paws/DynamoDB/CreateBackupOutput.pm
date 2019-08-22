
package Paws::DynamoDB::CreateBackupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_BackupDetails/;
  has BackupDetails => (is => 'ro', isa => DynamoDB_BackupDetails);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'BackupDetails' => {
                                               'class' => 'Paws::DynamoDB::BackupDetails',
                                               'type' => 'DynamoDB_BackupDetails'
                                             }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::CreateBackupOutput

=head1 ATTRIBUTES


=head2 BackupDetails => DynamoDB_BackupDetails

Contains the details of the backup created for the table.


=head2 _request_id => Str


=cut

1;