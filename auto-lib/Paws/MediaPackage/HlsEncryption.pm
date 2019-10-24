# Generated from default/object.tt
package Paws::MediaPackage::HlsEncryption;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::MediaPackage::Types qw/MediaPackage_SpekeKeyProvider/;
  has ConstantInitializationVector => (is => 'ro', isa => Str);
  has EncryptionMethod => (is => 'ro', isa => Str);
  has KeyRotationIntervalSeconds => (is => 'ro', isa => Int);
  has RepeatExtXKey => (is => 'ro', isa => Bool);
  has SpekeKeyProvider => (is => 'ro', isa => MediaPackage_SpekeKeyProvider, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RepeatExtXKey' => {
                                    'type' => 'Bool'
                                  },
               'ConstantInitializationVector' => {
                                                   'type' => 'Str'
                                                 },
               'SpekeKeyProvider' => {
                                       'class' => 'Paws::MediaPackage::SpekeKeyProvider',
                                       'type' => 'MediaPackage_SpekeKeyProvider'
                                     },
               'KeyRotationIntervalSeconds' => {
                                                 'type' => 'Int'
                                               },
               'EncryptionMethod' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'RepeatExtXKey' => 'repeatExtXKey',
                       'ConstantInitializationVector' => 'constantInitializationVector',
                       'SpekeKeyProvider' => 'spekeKeyProvider',
                       'KeyRotationIntervalSeconds' => 'keyRotationIntervalSeconds',
                       'EncryptionMethod' => 'encryptionMethod'
                     },
  'IsRequired' => {
                    'SpekeKeyProvider' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::HlsEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::HlsEncryption object:

  $service_obj->Method(Att1 => { ConstantInitializationVector => $value, ..., SpekeKeyProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::HlsEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->ConstantInitializationVector

=head1 DESCRIPTION

An HTTP Live Streaming (HLS) encryption configuration.

=head1 ATTRIBUTES


=head2 ConstantInitializationVector => Str

  A constant initialization vector for encryption (optional). When not
specified the initialization vector will be periodically rotated.


=head2 EncryptionMethod => Str

  The encryption method to use.


=head2 KeyRotationIntervalSeconds => Int

  Interval (in seconds) between each encryption key rotation.


=head2 RepeatExtXKey => Bool

  When enabled, the EXT-X-KEY tag will be repeated in output manifests.


=head2 B<REQUIRED> SpekeKeyProvider => MediaPackage_SpekeKeyProvider

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

