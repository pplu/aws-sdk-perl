
package Paws::DynamoDB::DescribeTableOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::TypeLibrary qw/PawsDynamoDBTableDescription/;
  has Table => (is => 'ro', isa => PawsDynamoDBTableDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'Table' => {
                                       'class' => 'Paws::DynamoDB::TableDescription',
                                       'type' => 'PawsDynamoDBTableDescription'
                                     }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeTableOutput

=head1 ATTRIBUTES


=head2 Table => PawsDynamoDBTableDescription

The properties of the table.


=head2 _request_id => Str


=cut

1;