package Paws::ElasticTranscoder::PlayReadyDrm;
  use Moose;
  has Format => (is => 'ro', isa => 'Str');
  has InitializationVector => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has KeyMd5 => (is => 'ro', isa => 'Str');
  has LicenseAcquisitionUrl => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::PlayReadyDrm

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::PlayReadyDrm object:

  $service_obj->Method(Att1 => { Format => $value, ..., LicenseAcquisitionUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::PlayReadyDrm object:

  $result = $service_obj->Method(...);
  $result->Att1->Format

=head1 DESCRIPTION

The PlayReady DRM settings, if any, that you want Elastic Transcoder to
apply to the output files associated with this playlist.

PlayReady DRM encrypts your media files using C<aes-ctr> encryption.

If you use DRM for an C<HLSv3> playlist, your outputs must have a
master playlist.

=head1 ATTRIBUTES


=head2 Format => Str

  The type of DRM, if any, that you want Elastic Transcoder to apply to
the output files associated with this playlist.


=head2 InitializationVector => Str

  The series of random bits created by a random bit generator, unique for
every encryption operation, that you want Elastic Transcoder to use to
encrypt your files. The initialization vector must be base64-encoded,
and it must be exactly 8 bytes long before being base64-encoded. If no
initialization vector is provided, Elastic Transcoder generates one for
you.


=head2 Key => Str

  The DRM key for your file, provided by your DRM license provider. The
key must be base64-encoded, and it must be one of the following bit
lengths before being base64-encoded:

C<128>, C<192>, or C<256>.

The key must also be encrypted by using AWS KMS.


=head2 KeyId => Str

  The ID for your DRM key, so that your DRM license provider knows which
key to provide.

The key ID must be provided in big endian, and Elastic Transcoder
converts it to little endian before inserting it into the PlayReady DRM
headers. If you are unsure whether your license server provides your
key ID in big or little endian, check with your DRM provider.


=head2 KeyMd5 => Str

  The MD5 digest of the key used for DRM on your file, and that you want
Elastic Transcoder to use as a checksum to make sure your key was not
corrupted in transit. The key MD5 must be base64-encoded, and it must
be exactly 16 bytes before being base64-encoded.


=head2 LicenseAcquisitionUrl => Str

  The location of the license key required to play DRM content. The URL
must be an absolute path, and is referenced by the PlayReady header.
The PlayReady header is referenced in the protection header of the
client manifest for Smooth Streaming outputs, and in the EXT-X-DXDRM
and EXT-XDXDRMINFO metadata tags for HLS playlist outputs. An example
URL looks like this: C<https://www.example.com/exampleKey/>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

