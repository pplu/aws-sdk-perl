
package Paws::Signer::PutSigningProfile;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Signer::Types qw/Signer_SigningMaterial Signer_TagMap Signer_SigningPlatformOverrides Signer_SigningParameters/;
  has Overrides => (is => 'ro', isa => Signer_SigningPlatformOverrides, predicate => 1);
  has PlatformId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ProfileName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SigningMaterial => (is => 'ro', isa => Signer_SigningMaterial, required => 1, predicate => 1);
  has SigningParameters => (is => 'ro', isa => Signer_SigningParameters, predicate => 1);
  has Tags => (is => 'ro', isa => Signer_TagMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutSigningProfile');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/signing-profiles/{profileName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Signer::PutSigningProfileResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'Signer_TagMap',
                           'class' => 'Paws::Signer::TagMap'
                         },
               'PlatformId' => {
                                 'type' => 'Str'
                               },
               'SigningMaterial' => {
                                      'class' => 'Paws::Signer::SigningMaterial',
                                      'type' => 'Signer_SigningMaterial'
                                    },
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
                              }
             },
  'IsRequired' => {
                    'SigningMaterial' => 1,
                    'PlatformId' => 1,
                    'ProfileName' => 1
                  },
  'NameInRequest' => {
                       'SigningMaterial' => 'signingMaterial',
                       'Overrides' => 'overrides',
                       'PlatformId' => 'platformId',
                       'SigningParameters' => 'signingParameters',
                       'Tags' => 'tags'
                     },
  'ParamInURI' => {
                    'ProfileName' => 'profileName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::PutSigningProfile - Arguments for method PutSigningProfile on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSigningProfile on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method PutSigningProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSigningProfile.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $PutSigningProfileResponse = $signer->PutSigningProfile(
      PlatformId      => 'MyPlatformId',
      ProfileName     => 'MyProfileName',
      SigningMaterial => {
        CertificateArn => 'MyCertificateArn',

      },
      Overrides => {
        SigningConfiguration => {
          EncryptionAlgorithm => 'RSA',     # values: RSA, ECDSA; OPTIONAL
          HashAlgorithm       => 'SHA1',    # values: SHA1, SHA256; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      SigningParameters =>
        { 'MySigningParameterKey' => 'MySigningParameterValue', },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $PutSigningProfileResponse->Arn;

    # Returns a L<Paws::Signer::PutSigningProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/PutSigningProfile>

=head1 ATTRIBUTES


=head2 Overrides => Signer_SigningPlatformOverrides

A subfield of C<platform>. This specifies any different configuration
options that you want to apply to the chosen platform (such as a
different C<hash-algorithm> or C<signing-algorithm>).



=head2 B<REQUIRED> PlatformId => Str

The ID of the signing profile to be created.



=head2 B<REQUIRED> ProfileName => Str

The name of the signing profile to be created.



=head2 B<REQUIRED> SigningMaterial => Signer_SigningMaterial

The AWS Certificate Manager certificate that will be used to sign code
with the new signing profile.



=head2 SigningParameters => Signer_SigningParameters

Map of key-value pairs for signing. These can include any information
that you want to use during signing.



=head2 Tags => Signer_TagMap

Tags to be associated with the signing profile being created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSigningProfile in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

