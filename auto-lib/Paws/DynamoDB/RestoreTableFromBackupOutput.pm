
package Paws::DynamoDB::RestoreTableFromBackupOutput;
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

Paws::DynamoDB::RestoreTableFromBackupOutput

=head1 ATTRIBUTES


=head2 TableDescription => $TableDescription

The description of the table created from an existing backup.


=head2 _request_id => Str


=cut

1;