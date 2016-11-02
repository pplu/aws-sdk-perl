
package Paws::IAM::CreateSAMLProviderResponse;
  use Moose;
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateSAMLProviderResponse

=head1 ATTRIBUTES


=head2 SAMLProviderArn => Str

The Amazon Resource Name (ARN) of the new SAML provider resource in
IAM.


=head2 _request_id => Str


=cut

