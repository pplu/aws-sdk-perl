package Paws::MediaPackage::MssPackage;
  use Moose;
  has Encryption => (is => 'ro', isa => 'Paws::MediaPackage::MssEncryption', request_name => 'encryption', traits => ['NameInRequest']);
  has ManifestWindowSeconds => (is => 'ro', isa => 'Int', request_name => 'manifestWindowSeconds', traits => ['NameInRequest']);
  has SegmentDurationSeconds => (is => 'ro', isa => 'Int', request_name => 'segmentDurationSeconds', traits => ['NameInRequest']);
  has StreamSelection => (is => 'ro', isa => 'Paws::MediaPackage::StreamSelection', request_name => 'streamSelection', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::MssPackage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::MssPackage object:

  $service_obj->Method(Att1 => { Encryption => $value, ..., StreamSelection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::MssPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->Encryption

=head1 DESCRIPTION

A Microsoft Smooth Streaming (MSS) packaging configuration.

=head1 ATTRIBUTES


=head2 Encryption => L<Paws::MediaPackage::MssEncryption>

  


=head2 ManifestWindowSeconds => Int

  The time window (in seconds) contained in each manifest.


=head2 SegmentDurationSeconds => Int

  The duration (in seconds) of each segment.


=head2 StreamSelection => L<Paws::MediaPackage::StreamSelection>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

