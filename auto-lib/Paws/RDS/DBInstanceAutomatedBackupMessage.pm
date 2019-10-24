# Generated from callresult_class.tt

package Paws::RDS::DBInstanceAutomatedBackupMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_DBInstanceAutomatedBackup/;
  has DBInstanceAutomatedBackups => (is => 'ro', isa => ArrayRef[RDS_DBInstanceAutomatedBackup]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBInstanceAutomatedBackups' => {
                                                 'class' => 'Paws::RDS::DBInstanceAutomatedBackup',
                                                 'type' => 'ArrayRef[RDS_DBInstanceAutomatedBackup]'
                                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'DBInstanceAutomatedBackups' => 'DBInstanceAutomatedBackup'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBInstanceAutomatedBackupMessage

=head1 ATTRIBUTES


=head2 DBInstanceAutomatedBackups => ArrayRef[RDS_DBInstanceAutomatedBackup]

A list of C<DBInstanceAutomatedBackup> instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords> .


=head2 _request_id => Str


=cut

