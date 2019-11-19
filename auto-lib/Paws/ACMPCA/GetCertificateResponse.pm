# Generated from json/callresult_class.tt

package Paws::ACMPCA::GetCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ACMPCA::Types qw//;
  has Certificate => (is => 'ro', isa => Str);
  has CertificateChain => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Certificate' => {
                                  'type' => 'Str'
                                },
               'CertificateChain' => {
                                       'type' => 'Str'
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

Paws::ACMPCA::GetCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => Str

The base64 PEM-encoded certificate specified by the C<CertificateArn>
parameter.


=head2 CertificateChain => Str

The base64 PEM-encoded certificate chain that chains up to the
on-premises root CA certificate that you used to sign your private CA
certificate.


=head2 _request_id => Str


=cut

1;