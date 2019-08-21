
package Paws::DynamoDB::CreateTableOutput;
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

Paws::DynamoDB::CreateTableOutput

=head1 ATTRIBUTES


=head2 TableDescription => PawsDynamoDBTableDescription

Represents the properties of the table.


=head2 _request_id => Str


=cut

1;