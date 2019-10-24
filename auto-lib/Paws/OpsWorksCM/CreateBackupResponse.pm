# Generated from json/callresult_class.tt

package Paws::OpsWorksCM::CreateBackupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorksCM::Types qw/OpsWorksCM_Backup/;
  has Backup => (is => 'ro', isa => OpsWorksCM_Backup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Backup' => {
                             'class' => 'Paws::OpsWorksCM::Backup',
                             'type' => 'OpsWorksCM_Backup'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::CreateBackupResponse

=head1 ATTRIBUTES


=head2 Backup => OpsWorksCM_Backup

Backup created by request.


=head2 _request_id => Str


=cut

1;