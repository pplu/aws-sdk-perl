
package Paws::CognitoIdp::CreateUserPoolDomainResponse;
  use Moose;
  has CloudFrontDomain => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolDomainResponse

=head1 ATTRIBUTES


=head2 CloudFrontDomain => Str

The Amazon CloudFront endpoint that you use as the target of the alias
that you set up with your Domain Name Service (DNS) provider.


=head2 _request_id => Str


=cut

1;