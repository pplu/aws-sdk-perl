# Generated from json/callresult_class.tt

package Paws::FSX::CreateBackupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::FSX::Types qw/FSX_Backup/;
  has Backup => (is => 'ro', isa => FSX_Backup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Backup' => {
                             'class' => 'Paws::FSX::Backup',
                             'type' => 'FSX_Backup'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateBackupResponse

=head1 ATTRIBUTES


=head2 Backup => FSX_Backup

A description of the backup.


=head2 _request_id => Str


=cut

1;