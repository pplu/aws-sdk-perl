
package Paws::Signer::GetSigningPlatformResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Signer::Types qw/Signer_SigningConfiguration Signer_SigningImageFormat/;
  has Category => (is => 'ro', isa => Str);
  has DisplayName => (is => 'ro', isa => Str);
  has MaxSizeInMB => (is => 'ro', isa => Int);
  has Partner => (is => 'ro', isa => Str);
  has PlatformId => (is => 'ro', isa => Str);
  has SigningConfiguration => (is => 'ro', isa => Signer_SigningConfiguration);
  has SigningImageFormat => (is => 'ro', isa => Signer_SigningImageFormat);
  has Target => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PlatformId' => {
                                 'type' => 'Str'
                               },
               'Partner' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MaxSizeInMB' => {
                                  'type' => 'Int'
                                },
               'Target' => {
                             'type' => 'Str'
                           },
               'SigningConfiguration' => {
                                           'class' => 'Paws::Signer::SigningConfiguration',
                                           'type' => 'Signer_SigningConfiguration'
                                         },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'SigningImageFormat' => {
                                         'class' => 'Paws::Signer::SigningImageFormat',
                                         'type' => 'Signer_SigningImageFormat'
                                       },
               'Category' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'MaxSizeInMB' => 'maxSizeInMB',
                       'Target' => 'target',
                       'PlatformId' => 'platformId',
                       'Partner' => 'partner',
                       'SigningImageFormat' => 'signingImageFormat',
                       'DisplayName' => 'displayName',
                       'Category' => 'category',
                       'SigningConfiguration' => 'signingConfiguration'
                     }
}
;
    return $Params_map;
  }

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


=head2 SigningConfiguration => Signer_SigningConfiguration

A list of configurations applied to the target platform at signing.


=head2 SigningImageFormat => Signer_SigningImageFormat

The format of the target platform's signing image.


=head2 Target => Str

The validation template that is used by the target signing platform.


=head2 _request_id => Str


=cut

