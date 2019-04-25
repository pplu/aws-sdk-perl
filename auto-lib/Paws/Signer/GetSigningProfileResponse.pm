
package Paws::Signer::GetSigningProfileResponse;
  use Moose;
  has Overrides => (is => 'ro', isa => 'Paws::Signer::SigningPlatformOverrides', traits => ['NameInRequest'], request_name => 'overrides');
  has PlatformId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformId');
  has ProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileName');
  has SigningMaterial => (is => 'ro', isa => 'Paws::Signer::SigningMaterial', traits => ['NameInRequest'], request_name => 'signingMaterial');
  has SigningParameters => (is => 'ro', isa => 'Paws::Signer::SigningParameters', traits => ['NameInRequest'], request_name => 'signingParameters');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::GetSigningProfileResponse

=head1 ATTRIBUTES


=head2 Overrides => L<Paws::Signer::SigningPlatformOverrides>

A list of overrides applied by the target signing profile for signing
operations.


=head2 PlatformId => Str

The ID of the platform that is used by the target signing profile.


=head2 ProfileName => Str

The name of the target signing profile.


=head2 SigningMaterial => L<Paws::Signer::SigningMaterial>

The ARN of the certificate that the target profile uses for signing
operations.


=head2 SigningParameters => L<Paws::Signer::SigningParameters>

A map of key-value pairs for signing operations that is attached to the
target signing profile.


=head2 Status => Str

The status of the target signing profile.

Valid values are: C<"Active">, C<"Canceled">
=head2 _request_id => Str


=cut

