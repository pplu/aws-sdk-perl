package Paws::MediaPackageVod::HlsPackage;
  use Moose;
  has Encryption => (is => 'ro', isa => 'Paws::MediaPackageVod::HlsEncryption', request_name => 'encryption', traits => ['NameInRequest']);
  has HlsManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageVod::HlsManifest]', request_name => 'hlsManifests', traits => ['NameInRequest'], required => 1);
  has SegmentDurationSeconds => (is => 'ro', isa => 'Int', request_name => 'segmentDurationSeconds', traits => ['NameInRequest']);
  has UseAudioRenditionGroup => (is => 'ro', isa => 'Bool', request_name => 'useAudioRenditionGroup', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::HlsPackage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::HlsPackage object:

  $service_obj->Method(Att1 => { Encryption => $value, ..., UseAudioRenditionGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::HlsPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->Encryption

=head1 DESCRIPTION

An HTTP Live Streaming (HLS) packaging configuration.

=head1 ATTRIBUTES


=head2 Encryption => L<Paws::MediaPackageVod::HlsEncryption>

  


=head2 B<REQUIRED> HlsManifests => ArrayRef[L<Paws::MediaPackageVod::HlsManifest>]

  A list of HLS manifest configurations.


=head2 SegmentDurationSeconds => Int

  Duration (in seconds) of each fragment. Actual fragments will be
rounded to the nearest multiple of the source fragment duration.


=head2 UseAudioRenditionGroup => Bool

  When enabled, audio streams will be placed in rendition groups in the
output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

