# Generated from default/object.tt
package Paws::Signer::SigningProfile;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Signer::Types qw/Signer_TagMap Signer_SigningMaterial Signer_SigningParameters/;
  has Arn => (is => 'ro', isa => Str);
  has PlatformId => (is => 'ro', isa => Str);
  has ProfileName => (is => 'ro', isa => Str);
  has SigningMaterial => (is => 'ro', isa => Signer_SigningMaterial);
  has SigningParameters => (is => 'ro', isa => Signer_SigningParameters);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Signer_TagMap);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'Signer_TagMap',
                           'class' => 'Paws::Signer::TagMap'
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
                        },
               'SigningParameters' => {
                                        'class' => 'Paws::Signer::SigningParameters',
                                        'type' => 'Signer_SigningParameters'
                                      },
               'ProfileName' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SigningMaterial' => 'signingMaterial',
                       'Arn' => 'arn',
                       'Tags' => 'tags',
                       'Status' => 'status',
                       'PlatformId' => 'platformId',
                       'SigningParameters' => 'signingParameters',
                       'ProfileName' => 'profileName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SigningProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::SigningProfile object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::SigningProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about the ACM certificates and code signing
configuration parameters that can be used by a given code signing user.

=head1 ATTRIBUTES


=head2 Arn => Str

  Amazon Resource Name (ARN) for the signing profile.


=head2 PlatformId => Str

  The ID of a platform that is available for use by a signing profile.


=head2 ProfileName => Str

  The name of the signing profile.


=head2 SigningMaterial => Signer_SigningMaterial

  The ACM certificate that is available for use by a signing profile.


=head2 SigningParameters => Signer_SigningParameters

  The parameters that are available for use by a code signing user.


=head2 Status => Str

  The status of a code signing profile.


=head2 Tags => Signer_TagMap

  A list of tags associated with the signing profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

