# Generated from json/callresult_class.tt

package Paws::ACM::ExportCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ACM::Types qw//;
  has Certificate => (is => 'ro', isa => Str);
  has CertificateChain => (is => 'ro', isa => Str);
  has PrivateKey => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PrivateKey' => {
                                 'type' => 'Str'
                               },
               'Certificate' => {
                                  'type' => 'Str'
                                },
               'CertificateChain' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ACM::ExportCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => Str

The base64 PEM-encoded certificate.


=head2 CertificateChain => Str

The base64 PEM-encoded certificate chain. This does not include the
certificate that you are exporting.


=head2 PrivateKey => Str

The encrypted private key associated with the public key in the
certificate. The key is output in PKCS #8 format and is base64
PEM-encoded.


=head2 _request_id => Str


=cut

1;