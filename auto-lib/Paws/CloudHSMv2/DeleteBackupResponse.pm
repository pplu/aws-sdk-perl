# Generated from json/callresult_class.tt

package Paws::CloudHSMv2::DeleteBackupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSMv2::Types qw/CloudHSMv2_Backup/;
  has Backup => (is => 'ro', isa => CloudHSMv2_Backup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Backup' => {
                             'class' => 'Paws::CloudHSMv2::Backup',
                             'type' => 'CloudHSMv2_Backup'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::DeleteBackupResponse

=head1 ATTRIBUTES


=head2 Backup => CloudHSMv2_Backup

Information on the C<Backup> object deleted.


=head2 _request_id => Str


=cut

1;