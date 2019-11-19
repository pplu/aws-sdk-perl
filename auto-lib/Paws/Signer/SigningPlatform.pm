# Generated from default/object.tt
package Paws::Signer::SigningPlatform;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Signer::Types qw/Signer_SigningImageFormat Signer_SigningConfiguration/;
  has Category => (is => 'ro', isa => Str);
  has DisplayName => (is => 'ro', isa => Str);
  has MaxSizeInMB => (is => 'ro', isa => Int);
  has Partner => (is => 'ro', isa => Str);
  has PlatformId => (is => 'ro', isa => Str);
  has SigningConfiguration => (is => 'ro', isa => Signer_SigningConfiguration);
  has SigningImageFormat => (is => 'ro', isa => Signer_SigningImageFormat);
  has Target => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Target' => 'target',
                       'MaxSizeInMB' => 'maxSizeInMB',
                       'Partner' => 'partner',
                       'PlatformId' => 'platformId',
                       'Category' => 'category',
                       'SigningImageFormat' => 'signingImageFormat',
                       'DisplayName' => 'displayName',
                       'SigningConfiguration' => 'signingConfiguration'
                     },
  'types' => {
               'Category' => {
                               'type' => 'Str'
                             },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'SigningImageFormat' => {
                                         'class' => 'Paws::Signer::SigningImageFormat',
                                         'type' => 'Signer_SigningImageFormat'
                                       },
               'SigningConfiguration' => {
                                           'class' => 'Paws::Signer::SigningConfiguration',
                                           'type' => 'Signer_SigningConfiguration'
                                         },
               'Target' => {
                             'type' => 'Str'
                           },
               'MaxSizeInMB' => {
                                  'type' => 'Int'
                                },
               'Partner' => {
                              'type' => 'Str'
                            },
               'PlatformId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SigningPlatform

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::SigningPlatform object:

  $service_obj->Method(Att1 => { Category => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::SigningPlatform object:

  $result = $service_obj->Method(...);
  $result->Att1->Category

=head1 DESCRIPTION

Contains information about the signing configurations and parameters
that is used to perform a code signing job.

=head1 ATTRIBUTES


=head2 Category => Str

  The category of a code signing platform.


=head2 DisplayName => Str

  The display name of a code signing platform.


=head2 MaxSizeInMB => Int

  The maximum size (in MB) of code that can be signed by a code signing
platform.


=head2 Partner => Str

  Any partner entities linked to a code signing platform.


=head2 PlatformId => Str

  The ID of a code signing; platform.


=head2 SigningConfiguration => Signer_SigningConfiguration

  The configuration of a code signing platform. This includes the
designated hash algorithm and encryption algorithm of a signing
platform.


=head2 SigningImageFormat => Signer_SigningImageFormat

  


=head2 Target => Str

  The types of targets that can be signed by a code signing platform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

