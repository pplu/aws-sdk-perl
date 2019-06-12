package Paws::MediaPackageVod::DashPackage;
  use Moose;
  has DashManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageVod::DashManifest]', request_name => 'dashManifests', traits => ['NameInRequest'], required => 1);
  has Encryption => (is => 'ro', isa => 'Paws::MediaPackageVod::DashEncryption', request_name => 'encryption', traits => ['NameInRequest']);
  has SegmentDurationSeconds => (is => 'ro', isa => 'Int', request_name => 'segmentDurationSeconds', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::DashPackage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::DashPackage object:

  $service_obj->Method(Att1 => { DashManifests => $value, ..., SegmentDurationSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::DashPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->DashManifests

=head1 DESCRIPTION

A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashManifests => ArrayRef[L<Paws::MediaPackageVod::DashManifest>]

  A list of DASH manifest configurations.


=head2 Encryption => L<Paws::MediaPackageVod::DashEncryption>

  


=head2 SegmentDurationSeconds => Int

  Duration (in seconds) of each segment. Actual segments will be rounded
to the nearest multiple of the source segment duration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

