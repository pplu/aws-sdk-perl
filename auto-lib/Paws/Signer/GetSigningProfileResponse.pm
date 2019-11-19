
package Paws::Signer::GetSigningProfileResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Signer::Types qw/Signer_SigningParameters Signer_SigningPlatformOverrides Signer_TagMap Signer_SigningMaterial/;
  has Arn => (is => 'ro', isa => Str);
  has Overrides => (is => 'ro', isa => Signer_SigningPlatformOverrides);
  has PlatformId => (is => 'ro', isa => Str);
  has ProfileName => (is => 'ro', isa => Str);
  has SigningMaterial => (is => 'ro', isa => Signer_SigningMaterial);
  has SigningParameters => (is => 'ro', isa => Signer_SigningParameters);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Signer_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SigningParameters' => {
                                        'type' => 'Signer_SigningParameters',
                                        'class' => 'Paws::Signer::SigningParameters'
                                      },
               'ProfileName' => {
                                  'type' => 'Str'
                                },
               'Overrides' => {
                                'class' => 'Paws::Signer::SigningPlatformOverrides',
                                'type' => 'Signer_SigningPlatformOverrides'
                              },
               'Tags' => {
                           'class' => 'Paws::Signer::TagMap',
                           'type' => 'Signer_TagMap'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'PlatformId' => {
                                 'type' => 'Str'
                               },
               'SigningMaterial' => {
                                      'type' => 'Signer_SigningMaterial',
                                      'class' => 'Paws::Signer::SigningMaterial'
                                    },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Overrides' => 'overrides',
                       'SigningParameters' => 'signingParameters',
                       'ProfileName' => 'profileName',
                       'SigningMaterial' => 'signingMaterial',
                       'Arn' => 'arn',
                       'PlatformId' => 'platformId',
                       'Tags' => 'tags',
                       'Status' => 'status'
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


=head2 Arn => Str

The Amazon Resource Name (ARN) for the signing profile.


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
=head2 Tags => Signer_TagMap

A list of tags associated with the signing profile.


=head2 _request_id => Str


=cut

