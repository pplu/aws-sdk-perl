
package Paws::DynamoDB::RestoreTableFromBackupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::TypeLibrary qw/PawsDynamoDBTableDescription/;
  has TableDescription => (is => 'ro', isa => PawsDynamoDBTableDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'TableDescription' => {
                                                  'class' => 'Paws::DynamoDB::TableDescription',
                                                  'type' => 'PawsDynamoDBTableDescription'
                                                }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::RestoreTableFromBackupOutput

=head1 ATTRIBUTES


=head2 TableDescription => PawsDynamoDBTableDescription

The description of the table created from an existing backup.


=head2 _request_id => Str


=cut

1;