
package Paws::Signer::GetSigningProfileResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Overrides => (is => 'ro', isa => 'Paws::Signer::SigningPlatformOverrides', traits => ['NameInRequest'], request_name => 'overrides');
  has PlatformDisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformDisplayName');
  has PlatformId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformId');
  has ProfileName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileName');
  has ProfileVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileVersion');
  has ProfileVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileVersionArn');
  has RevocationRecord => (is => 'ro', isa => 'Paws::Signer::SigningProfileRevocationRecord', traits => ['NameInRequest'], request_name => 'revocationRecord');
  has SignatureValidityPeriod => (is => 'ro', isa => 'Paws::Signer::SignatureValidityPeriod', traits => ['NameInRequest'], request_name => 'signatureValidityPeriod');
  has SigningMaterial => (is => 'ro', isa => 'Paws::Signer::SigningMaterial', traits => ['NameInRequest'], request_name => 'signingMaterial');
  has SigningParameters => (is => 'ro', isa => 'Paws::Signer::SigningParameters', traits => ['NameInRequest'], request_name => 'signingParameters');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');
  has Tags => (is => 'ro', isa => 'Paws::Signer::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::GetSigningProfileResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) for the signing profile.


=head2 Overrides => L<Paws::Signer::SigningPlatformOverrides>

A list of overrides applied by the target signing profile for signing
operations.


=head2 PlatformDisplayName => Str

A human-readable name for the signing platform associated with the
signing profile.


=head2 PlatformId => Str

The ID of the platform that is used by the target signing profile.


=head2 ProfileName => Str

The name of the target signing profile.


=head2 ProfileVersion => Str

The current version of the signing profile.


=head2 ProfileVersionArn => Str

The signing profile ARN, including the profile version.


=head2 RevocationRecord => L<Paws::Signer::SigningProfileRevocationRecord>




=head2 SignatureValidityPeriod => L<Paws::Signer::SignatureValidityPeriod>




=head2 SigningMaterial => L<Paws::Signer::SigningMaterial>

The ARN of the certificate that the target profile uses for signing
operations.


=head2 SigningParameters => L<Paws::Signer::SigningParameters>

A map of key-value pairs for signing operations that is attached to the
target signing profile.


=head2 Status => Str

The status of the target signing profile.

Valid values are: C<"Active">, C<"Canceled">, C<"Revoked">
=head2 StatusReason => Str

Reason for the status of the target signing profile.


=head2 Tags => L<Paws::Signer::TagMap>

A list of tags associated with the signing profile.


=head2 _request_id => Str


=cut

