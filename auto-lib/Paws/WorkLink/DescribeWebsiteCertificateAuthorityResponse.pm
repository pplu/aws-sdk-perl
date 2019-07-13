
package Paws::WorkLink::DescribeWebsiteCertificateAuthorityResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeWebsiteCertificateAuthorityResponse

=head1 ATTRIBUTES


=head2 Certificate => Str

The root certificate of the certificate authority.


=head2 CreatedTime => Str

The time that the certificate authority was added.


=head2 DisplayName => Str

The certificate name to display.


=head2 _request_id => Str


=cut

