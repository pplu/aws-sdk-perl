
package Paws::Greengrass::ListGroupCertificateAuthoritiesResponse;
  use Moose;
  has GroupCertificateAuthorities => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::GroupCertificateAuthorityProperties]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListGroupCertificateAuthoritiesResponse

=head1 ATTRIBUTES


=head2 GroupCertificateAuthorities => ArrayRef[L<Paws::Greengrass::GroupCertificateAuthorityProperties>]

A list of certificate authorities associated with the group.


=head2 _request_id => Str


=cut

