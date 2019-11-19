
package Paws::IoT::CreateKeysAndCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_KeyPair/;
  has CertificateArn => (is => 'ro', isa => Str);
  has CertificateId => (is => 'ro', isa => Str);
  has CertificatePem => (is => 'ro', isa => Str);
  has KeyPair => (is => 'ro', isa => IoT_KeyPair);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               'CertificateId' => {
                                    'type' => 'Str'
                                  },
               'CertificatePem' => {
                                     'type' => 'Str'
                                   },
               'KeyPair' => {
                              'class' => 'Paws::IoT::KeyPair',
                              'type' => 'IoT_KeyPair'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CertificateId' => 'certificateId',
                       'CertificateArn' => 'certificateArn',
                       'CertificatePem' => 'certificatePem',
                       'KeyPair' => 'keyPair'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateKeysAndCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The ARN of the certificate.


=head2 CertificateId => Str

The ID of the certificate. AWS IoT issues a default subject name for
the certificate (for example, AWS IoT Certificate).


=head2 CertificatePem => Str

The certificate data, in PEM format.


=head2 KeyPair => IoT_KeyPair

The generated key pair.


=head2 _request_id => Str


=cut

