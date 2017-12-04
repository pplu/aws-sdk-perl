package Paws::ElasticTranscoder::HlsContentProtection;
  use Moose;
  has InitializationVector => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has KeyMd5 => (is => 'ro', isa => 'Str');
  has KeyStoragePolicy => (is => 'ro', isa => 'Str');
  has LicenseAcquisitionUrl => (is => 'ro', isa => 'Str');
  has Method => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::HlsContentProtection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::HlsContentProtection object:

  $service_obj->Method(Att1 => { InitializationVector => $value, ..., Method => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::HlsContentProtection object:

  $result = $service_obj->Method(...);
  $result->Att1->InitializationVector

=head1 DESCRIPTION

The HLS content protection settings, if any, that you want Elastic
Transcoder to apply to your output files.

=head1 ATTRIBUTES


=head2 InitializationVector => Str

  If Elastic Transcoder is generating your key for you, you must leave
this field blank.

The series of random bits created by a random bit generator, unique for
every encryption operation, that you want Elastic Transcoder to use to
encrypt your output files. The initialization vector must be
base64-encoded, and it must be exactly 16 bytes before being
base64-encoded.


=head2 Key => Str

  If you want Elastic Transcoder to generate a key for you, leave this
field blank.

If you choose to supply your own key, you must encrypt the key by using
AWS KMS. The key must be base64-encoded, and it must be one of the
following bit lengths before being base64-encoded:

C<128>, C<192>, or C<256>.


=head2 KeyMd5 => Str

  If Elastic Transcoder is generating your key for you, you must leave
this field blank.

The MD5 digest of the key that you want Elastic Transcoder to use to
encrypt your output file, and that you want Elastic Transcoder to use
as a checksum to make sure your key was not corrupted in transit. The
key MD5 must be base64-encoded, and it must be exactly 16 bytes before
being base64- encoded.


=head2 KeyStoragePolicy => Str

  Specify whether you want Elastic Transcoder to write your HLS license
key to an Amazon S3 bucket. If you choose C<WithVariantPlaylists>,
C<LicenseAcquisitionUrl> must be left blank and Elastic Transcoder
writes your data key into the same bucket as the associated playlist.


=head2 LicenseAcquisitionUrl => Str

  The location of the license key required to decrypt your HLS playlist.
The URL must be an absolute path, and is referenced in the URI
attribute of the EXT-X-KEY metadata tag in the playlist file.


=head2 Method => Str

  The content protection method for your output. The only valid value is:
C<aes-128>.

This value is written into the method attribute of the C<EXT-X-KEY>
metadata tag in the output playlist.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

