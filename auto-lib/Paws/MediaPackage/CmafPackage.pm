package Paws::MediaPackage::CmafPackage;
  use Moose;
  has Encryption => (is => 'ro', isa => 'Paws::MediaPackage::CmafEncryption', request_name => 'encryption', traits => ['NameInRequest']);
  has HlsManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackage::HlsManifest]', request_name => 'hlsManifests', traits => ['NameInRequest']);
  has SegmentDurationSeconds => (is => 'ro', isa => 'Int', request_name => 'segmentDurationSeconds', traits => ['NameInRequest']);
  has SegmentPrefix => (is => 'ro', isa => 'Str', request_name => 'segmentPrefix', traits => ['NameInRequest']);
  has StreamSelection => (is => 'ro', isa => 'Paws::MediaPackage::StreamSelection', request_name => 'streamSelection', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::CmafPackage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::CmafPackage object:

  $service_obj->Method(Att1 => { Encryption => $value, ..., StreamSelection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::CmafPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->Encryption

=head1 DESCRIPTION

A Common Media Application Format (CMAF) packaging configuration.

=head1 ATTRIBUTES


=head2 Encryption => L<Paws::MediaPackage::CmafEncryption>

  


=head2 HlsManifests => ArrayRef[L<Paws::MediaPackage::HlsManifest>]

  A list of HLS manifest configurations


=head2 SegmentDurationSeconds => Int

  Duration (in seconds) of each segment. Actual segments will be rounded
to the nearest multiple of the source segment duration.


=head2 SegmentPrefix => Str

  An optional custom string that is prepended to the name of each
segment. If not specified, it defaults to the ChannelId.


=head2 StreamSelection => L<Paws::MediaPackage::StreamSelection>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

