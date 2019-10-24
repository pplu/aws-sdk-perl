# Generated from callresult_class.tt

package Paws::RDS::DeleteDBInstanceAutomatedBackupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBInstanceAutomatedBackup/;
  has DBInstanceAutomatedBackup => (is => 'ro', isa => RDS_DBInstanceAutomatedBackup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBInstanceAutomatedBackup' => {
                                                'class' => 'Paws::RDS::DBInstanceAutomatedBackup',
                                                'type' => 'RDS_DBInstanceAutomatedBackup'
                                              }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBInstanceAutomatedBackupResult

=head1 ATTRIBUTES


=head2 DBInstanceAutomatedBackup => RDS_DBInstanceAutomatedBackup




=head2 _request_id => Str


=cut

