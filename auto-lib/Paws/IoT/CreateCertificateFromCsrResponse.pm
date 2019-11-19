
package Paws::IoT::CreateCertificateFromCsrResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has CertificateArn => (is => 'ro', isa => Str);
  has CertificateId => (is => 'ro', isa => Str);
  has CertificatePem => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'CertificateArn' => 'certificateArn',
                       'CertificateId' => 'certificateId',
                       'CertificatePem' => 'certificatePem'
                     },
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
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateCertificateFromCsrResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The Amazon Resource Name (ARN) of the certificate. You can use the ARN
as a principal for policy operations.


=head2 CertificateId => Str

The ID of the certificate. Certificate management operations only take
a certificateId.


=head2 CertificatePem => Str

The certificate data, in PEM format.


=head2 _request_id => Str


=cut

