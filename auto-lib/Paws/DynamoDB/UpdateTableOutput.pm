
package Paws::DynamoDB::UpdateTableOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Type::Utils qw/class_type/;
    my $TableDescription = class_type 'Paws::DynamoDB::TableDescription';
  
  has TableDescription => (is => 'ro', isa => $TableDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'TableDescription' => {
                                                  'class' => 'Paws::DynamoDB::TableDescription',
                                                  'type' => '$TableDescription'
                                                }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateTableOutput

=head1 ATTRIBUTES


=head2 TableDescription => $TableDescription

Represents the properties of the table.


=head2 _request_id => Str


=cut

1;