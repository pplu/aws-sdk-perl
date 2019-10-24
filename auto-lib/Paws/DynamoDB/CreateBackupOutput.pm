# Generated from json/callresult_class.tt

package Paws::DynamoDB::CreateBackupOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_BackupDetails/;
  has BackupDetails => (is => 'ro', isa => DynamoDB_BackupDetails);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BackupDetails' => {
                                    'class' => 'Paws::DynamoDB::BackupDetails',
                                    'type' => 'DynamoDB_BackupDetails'
                                  }
             }
}
;
    return $Params_map;
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