
package Paws::IoT::RegisterCACertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has CertificateArn => (is => 'ro', isa => Str);
  has CertificateId => (is => 'ro', isa => Str);

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
               '_request_id' => {
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

Paws::IoT::RegisterCACertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The CA certificate ARN.


=head2 CertificateId => Str

The CA certificate identifier.


=head2 _request_id => Str


=cut

