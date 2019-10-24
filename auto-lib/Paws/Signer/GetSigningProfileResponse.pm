
package Paws::Signer::GetSigningProfileResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Signer::Types qw/Signer_SigningParameters Signer_SigningMaterial Signer_SigningPlatformOverrides/;
  has Overrides => (is => 'ro', isa => Signer_SigningPlatformOverrides);
  has PlatformId => (is => 'ro', isa => Str);
  has ProfileName => (is => 'ro', isa => Str);
  has SigningMaterial => (is => 'ro', isa => Signer_SigningMaterial);
  has SigningParameters => (is => 'ro', isa => Signer_SigningParameters);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SigningMaterial' => {
                                      'class' => 'Paws::Signer::SigningMaterial',
                                      'type' => 'Signer_SigningMaterial'
                                    },
               'SigningParameters' => {
                                        'class' => 'Paws::Signer::SigningParameters',
                                        'type' => 'Signer_SigningParameters'
                                      },
               'Overrides' => {
                                'class' => 'Paws::Signer::SigningPlatformOverrides',
                                'type' => 'Signer_SigningPlatformOverrides'
                              },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProfileName' => {
                                  'type' => 'Str'
                                },
               'PlatformId' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'SigningMaterial' => 'signingMaterial',
                       'SigningParameters' => 'signingParameters',
                       'Overrides' => 'overrides',
                       'Status' => 'status',
                       'ProfileName' => 'profileName',
                       'PlatformId' => 'platformId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::GetSigningProfileResponse

=head1 ATTRIBUTES


=head2 Overrides => Signer_SigningPlatformOverrides

A list of overrides applied by the target signing profile for signing
operations.


=head2 PlatformId => Str

The ID of the platform that is used by the target signing profile.


=head2 ProfileName => Str

The name of the target signing profile.


=head2 SigningMaterial => Signer_SigningMaterial

The ARN of the certificate that the target profile uses for signing
operations.


=head2 SigningParameters => Signer_SigningParameters

A map of key-value pairs for signing operations that is attached to the
target signing profile.


=head2 Status => Str

The status of the target signing profile.

Valid values are: C<"Active">, C<"Canceled">
=head2 _request_id => Str


=cut

