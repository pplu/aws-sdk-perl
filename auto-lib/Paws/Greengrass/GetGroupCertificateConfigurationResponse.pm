
package Paws::Greengrass::GetGroupCertificateConfigurationResponse;
  use Moose;
  has CertificateAuthorityExpiryInMilliseconds => (is => 'ro', isa => 'Str');
  has CertificateExpiryInMilliseconds => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
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

