
package Paws::IoT::RegisterCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has CertificateArn => (is => 'ro', isa => Str);
  has CertificateId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CertificateId' => {
                                    'type' => 'Str'
                                  },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'CertificateId' => 'certificateId',
                       'CertificateArn' => 'certificateArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The certificate ARN.


=head2 CertificateId => Str

The certificate identifier.


=head2 _request_id => Str


=cut

