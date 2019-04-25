
package Paws::Greengrass::CreateGroupCertificateAuthorityResponse;
  use Moose;
  has GroupCertificateAuthorityArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateGroupCertificateAuthorityResponse

=head1 ATTRIBUTES


=head2 GroupCertificateAuthorityArn => Str

The ARN of the group certificate authority.


=head2 _request_id => Str


=cut

