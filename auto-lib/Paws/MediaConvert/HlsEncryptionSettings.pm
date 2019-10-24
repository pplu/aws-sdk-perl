# Generated from default/object.tt
package Paws::MediaConvert::HlsEncryptionSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_SpekeKeyProvider MediaConvert_StaticKeyProvider/;
  has ConstantInitializationVector => (is => 'ro', isa => Str);
  has EncryptionMethod => (is => 'ro', isa => Str);
  has InitializationVectorInManifest => (is => 'ro', isa => Str);
  has OfflineEncrypted => (is => 'ro', isa => Str);
  has SpekeKeyProvider => (is => 'ro', isa => MediaConvert_SpekeKeyProvider);
  has StaticKeyProvider => (is => 'ro', isa => MediaConvert_StaticKeyProvider);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'InitializationVectorInManifest' => {
                                                     'type' => 'Str'
                                                   },
               'StaticKeyProvider' => {
                                        'class' => 'Paws::MediaConvert::StaticKeyProvider',
                                        'type' => 'MediaConvert_StaticKeyProvider'
                                      },
               'OfflineEncrypted' => {
                                       'type' => 'Str'
                                     },
               'ConstantInitializationVector' => {
                                                   'type' => 'Str'
                                                 },
               'SpekeKeyProvider' => {
                                       'class' => 'Paws::MediaConvert::SpekeKeyProvider',
                                       'type' => 'MediaConvert_SpekeKeyProvider'
                                     },
               'EncryptionMethod' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'InitializationVectorInManifest' => 'initializationVectorInManifest',
                       'StaticKeyProvider' => 'staticKeyProvider',
                       'OfflineEncrypted' => 'offlineEncrypted',
                       'ConstantInitializationVector' => 'constantInitializationVector',
                       'SpekeKeyProvider' => 'spekeKeyProvider',
                       'EncryptionMethod' => 'encryptionMethod'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::HlsEncryptionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::HlsEncryptionSettings object:

  $service_obj->Method(Att1 => { ConstantInitializationVector => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::HlsEncryptionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ConstantInitializationVector

=head1 DESCRIPTION

Settings for HLS encryption

=head1 ATTRIBUTES


=head2 ConstantInitializationVector => Str

  This is a 128-bit, 16-byte hex value represented by a 32-character text
string. If this parameter is not set then the Initialization Vector
will follow the segment number by default.


=head2 EncryptionMethod => Str

  Encrypts the segments with the given encryption scheme. Leave blank to
disable. Selecting 'Disabled' in the web interface also disables
encryption.


=head2 InitializationVectorInManifest => Str

  The Initialization Vector is a 128-bit number used in conjunction with
the key for encrypting blocks. If set to INCLUDE, Initialization Vector
is listed in the manifest. Otherwise Initialization Vector is not in
the manifest.


=head2 OfflineEncrypted => Str

  Enable this setting to insert the EXT-X-SESSION-KEY element into the
master playlist. This allows for offline Apple HLS FairPlay content
protection.


=head2 SpekeKeyProvider => MediaConvert_SpekeKeyProvider

  Settings for use with a SPEKE key provider


=head2 StaticKeyProvider => MediaConvert_StaticKeyProvider

  Use these settings to set up encryption with a static key provider.


=head2 Type => Str

  Indicates which type of key provider is used for encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

