
package Paws::EC2::ExportClientVpnClientCertificateRevocationListResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ClientCertificateRevocationListStatus/;
  has CertificateRevocationList => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => EC2_ClientCertificateRevocationListStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CertificateRevocationList' => {
                                                'type' => 'Str'
                                              },
               'Status' => {
                             'type' => 'EC2_ClientCertificateRevocationListStatus',
                             'class' => 'Paws::EC2::ClientCertificateRevocationListStatus'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CertificateRevocationList' => 'certificateRevocationList',
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportClientVpnClientCertificateRevocationListResult

=head1 ATTRIBUTES


=head2 CertificateRevocationList => Str

Information about the client certificate revocation list.


=head2 Status => EC2_ClientCertificateRevocationListStatus

The current state of the client certificate revocation list.


=head2 _request_id => Str


=cut

