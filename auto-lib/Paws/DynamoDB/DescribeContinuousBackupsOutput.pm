
package Paws::DynamoDB::DescribeContinuousBackupsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::TypeLibrary qw/PawsDynamoDBContinuousBackupsDescription/;
  has ContinuousBackupsDescription => (is => 'ro', isa => PawsDynamoDBContinuousBackupsDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'ContinuousBackupsDescription' => {
                                                              'class' => 'Paws::DynamoDB::ContinuousBackupsDescription',
                                                              'type' => 'PawsDynamoDBContinuousBackupsDescription'
                                                            }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeContinuousBackupsOutput

=head1 ATTRIBUTES


=head2 ContinuousBackupsDescription => PawsDynamoDBContinuousBackupsDescription

Represents the continuous backups and point in time recovery settings
on the table.


=head2 _request_id => Str


=cut

1;