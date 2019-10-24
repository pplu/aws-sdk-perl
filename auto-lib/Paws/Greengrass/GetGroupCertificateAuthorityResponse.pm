
package Paws::Greengrass::GetGroupCertificateAuthorityResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has GroupCertificateAuthorityArn => (is => 'ro', isa => Str);
  has GroupCertificateAuthorityId => (is => 'ro', isa => Str);
  has PemEncodedCertificate => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PemEncodedCertificate' => {
                                            'type' => 'Str'
                                          },
               'GroupCertificateAuthorityArn' => {
                                                   'type' => 'Str'
                                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GroupCertificateAuthorityId' => {
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

Paws::Greengrass::GetGroupCertificateAuthorityResponse

=head1 ATTRIBUTES


=head2 GroupCertificateAuthorityArn => Str

The ARN of the certificate authority for the group.


=head2 GroupCertificateAuthorityId => Str

The ID of the certificate authority for the group.


=head2 PemEncodedCertificate => Str

The PEM encoded certificate for the group.


=head2 _request_id => Str


=cut

