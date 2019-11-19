# Generated from json/callresult_class.tt

package Paws::DynamoDB::RestoreTableFromBackupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_TableDescription/;
  has TableDescription => (is => 'ro', isa => DynamoDB_TableDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TableDescription' => {
                                       'type' => 'DynamoDB_TableDescription',
                                       'class' => 'Paws::DynamoDB::TableDescription'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::RestoreTableFromBackupOutput

=head1 ATTRIBUTES


=head2 TableDescription => DynamoDB_TableDescription

The description of the table created from an existing backup.


=head2 _request_id => Str


=cut

1;