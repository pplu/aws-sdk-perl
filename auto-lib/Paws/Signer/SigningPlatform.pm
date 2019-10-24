# Generated from default/object.tt
package Paws::Signer::SigningPlatform;
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

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Target' => {
                             'type' => 'Str'
                           },
               'Partner' => {
                              'type' => 'Str'
                            },
               'SigningImageFormat' => {
                                         'class' => 'Paws::Signer::SigningImageFormat',
                                         'type' => 'Signer_SigningImageFormat'
                                       },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'Category' => {
                               'type' => 'Str'
                             },
               'MaxSizeInMB' => {
                                  'type' => 'Int'
                                },
               'PlatformId' => {
                                 'type' => 'Str'
                               },
               'SigningConfiguration' => {
                                           'class' => 'Paws::Signer::SigningConfiguration',
                                           'type' => 'Signer_SigningConfiguration'
                                         }
             },
  'NameInRequest' => {
                       'Target' => 'target',
                       'Partner' => 'partner',
                       'SigningImageFormat' => 'signingImageFormat',
                       'DisplayName' => 'displayName',
                       'Category' => 'category',
                       'MaxSizeInMB' => 'maxSizeInMB',
                       'PlatformId' => 'platformId',
                       'SigningConfiguration' => 'signingConfiguration'
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
that is used to perform an AWS Signer job.

=head1 ATTRIBUTES


=head2 Category => Str

  The category of an AWS Signer platform.


=head2 DisplayName => Str

  The display name of an AWS Signer platform.


=head2 MaxSizeInMB => Int

  The maximum size (in MB) of code that can be signed by a AWS Signer
platform.


=head2 Partner => Str

  Any partner entities linked to an AWS Signer platform.


=head2 PlatformId => Str

  The ID of an AWS Signer platform.


=head2 SigningConfiguration => Signer_SigningConfiguration

  The configuration of an AWS Signer platform. This includes the
designated hash algorithm and encryption algorithm of a signing
platform.


=head2 SigningImageFormat => Signer_SigningImageFormat

  The signing image format that is used by an AWS Signer platform.


=head2 Target => Str

  The types of targets that can be signed by an AWS Signer platform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

