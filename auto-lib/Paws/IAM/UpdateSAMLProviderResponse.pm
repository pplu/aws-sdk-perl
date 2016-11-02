
package Paws::IAM::UpdateSAMLProviderResponse;
  use Moose;
  has SAMLProviderArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateSAMLProviderResponse

=head1 ATTRIBUTES


=head2 SAMLProviderArn => Str

The Amazon Resource Name (ARN) of the SAML provider that was updated.


=head2 _request_id => Str


=cut

