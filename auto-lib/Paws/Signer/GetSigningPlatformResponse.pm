
package Paws::Signer::GetSigningPlatformResponse;
  use Moose;
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has MaxSizeInMB => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxSizeInMB');
  has Partner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'partner');
  has PlatformId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'platformId');
  has SigningConfiguration => (is => 'ro', isa => 'Paws::Signer::SigningConfiguration', traits => ['NameInRequest'], request_name => 'signingConfiguration');
  has SigningImageFormat => (is => 'ro', isa => 'Paws::Signer::SigningImageFormat', traits => ['NameInRequest'], request_name => 'signingImageFormat');
  has Target => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'target');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::GetSigningPlatformResponse

=head1 ATTRIBUTES


=head2 Category => Str

The category type of the target signing platform.

Valid values are: C<"AWSIoT">
=head2 DisplayName => Str

The display name of the target signing platform.


=head2 MaxSizeInMB => Int

The maximum size (in MB) of the payload that can be signed by the
target platform.


=head2 Partner => Str

A list of partner entities that use the target signing platform.


=head2 PlatformId => Str

The ID of the target signing platform.


=head2 SigningConfiguration => L<Paws::Signer::SigningConfiguration>

A list of configurations applied to the target platform at signing.


=head2 SigningImageFormat => L<Paws::Signer::SigningImageFormat>

The format of the target platform's signing image.


=head2 Target => Str

The validation template that is used by the target signing platform.


=head2 _request_id => Str


=cut

