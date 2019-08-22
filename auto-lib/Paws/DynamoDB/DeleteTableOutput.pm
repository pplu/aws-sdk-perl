
package Paws::DynamoDB::DeleteTableOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_TableDescription/;
  has TableDescription => (is => 'ro', isa => DynamoDB_TableDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'TableDescription' => {
                                                  'class' => 'Paws::DynamoDB::TableDescription',
                                                  'type' => 'DynamoDB_TableDescription'
                                                }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DeleteTableOutput

=head1 ATTRIBUTES


=head2 TableDescription => DynamoDB_TableDescription

Represents the properties of a table.


=head2 _request_id => Str


=cut

1;