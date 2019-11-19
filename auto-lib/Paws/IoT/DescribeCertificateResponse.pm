
package Paws::IoT::DescribeCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_CertificateDescription/;
  has CertificateDescription => (is => 'ro', isa => IoT_CertificateDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'CertificateDescription' => 'certificateDescription'
                     },
  'types' => {
               'CertificateDescription' => {
                                             'type' => 'IoT_CertificateDescription',
                                             'class' => 'Paws::IoT::CertificateDescription'
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

Paws::IoT::DescribeCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateDescription => IoT_CertificateDescription

The description of the certificate.


=head2 _request_id => Str


=cut

