
package Paws::Greengrass::UpdateGroupCertificateConfigurationResponse;
  use Moose;
  has CertificateAuthorityExpiryInMilliseconds => (is => 'ro', isa => 'Str');
  has CertificateExpiryInMilliseconds => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::UpdateGroupCertificateConfigurationResponse

=head1 ATTRIBUTES


=head2 CertificateAuthorityExpiryInMilliseconds => Str

Amount of time when the certificate authority expires in milliseconds.


=head2 CertificateExpiryInMilliseconds => Str

Amount of time when the certificate expires in milliseconds.


=head2 GroupId => Str

Id of the group the certificate configuration belongs to.


=head2 _request_id => Str


=cut

