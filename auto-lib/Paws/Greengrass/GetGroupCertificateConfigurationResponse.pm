
package Paws::Greengrass::GetGroupCertificateConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has CertificateAuthorityExpiryInMilliseconds => (is => 'ro', isa => Str);
  has CertificateExpiryInMilliseconds => (is => 'ro', isa => Str);
  has GroupId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CertificateAuthorityExpiryInMilliseconds' => {
                                                               'type' => 'Str'
                                                             },
               'GroupId' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CertificateExpiryInMilliseconds' => {
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

Paws::Greengrass::GetGroupCertificateConfigurationResponse

=head1 ATTRIBUTES


=head2 CertificateAuthorityExpiryInMilliseconds => Str

The amount of time remaining before the certificate authority expires,
in milliseconds.


=head2 CertificateExpiryInMilliseconds => Str

The amount of time remaining before the certificate expires, in
milliseconds.


=head2 GroupId => Str

The ID of the group certificate configuration.


=head2 _request_id => Str


=cut

