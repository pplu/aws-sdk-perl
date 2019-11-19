
package Paws::IoT::DescribeCACertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_CACertificateDescription IoT_RegistrationConfig/;
  has CertificateDescription => (is => 'ro', isa => IoT_CACertificateDescription);
  has RegistrationConfig => (is => 'ro', isa => IoT_RegistrationConfig);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RegistrationConfig' => 'registrationConfig',
                       'CertificateDescription' => 'certificateDescription'
                     },
  'types' => {
               'RegistrationConfig' => {
                                         'type' => 'IoT_RegistrationConfig',
                                         'class' => 'Paws::IoT::RegistrationConfig'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CertificateDescription' => {
                                             'type' => 'IoT_CACertificateDescription',
                                             'class' => 'Paws::IoT::CACertificateDescription'
                                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeCACertificateResponse

=head1 ATTRIBUTES


=head2 CertificateDescription => IoT_CACertificateDescription

The CA certificate description.


=head2 RegistrationConfig => IoT_RegistrationConfig

Information about the registration configuration.


=head2 _request_id => Str


=cut

