# Generated from json/callresult_class.tt

package Paws::ACMPCA::DescribeCertificateAuthorityResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ACMPCA::Types qw/ACMPCA_CertificateAuthority/;
  has CertificateAuthority => (is => 'ro', isa => ACMPCA_CertificateAuthority);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CertificateAuthority' => {
                                           'class' => 'Paws::ACMPCA::CertificateAuthority',
                                           'type' => 'ACMPCA_CertificateAuthority'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::DescribeCertificateAuthorityResponse

=head1 ATTRIBUTES


=head2 CertificateAuthority => ACMPCA_CertificateAuthority

A CertificateAuthority structure that contains information about your
private CA.


=head2 _request_id => Str


=cut

1;