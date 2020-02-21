package Paws::MediaPackageVod::DashPackage;
  use Moose;
  has DashManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageVod::DashManifest]', request_name => 'dashManifests', traits => ['NameInRequest'], required => 1);
  has Encryption => (is => 'ro', isa => 'Paws::MediaPackageVod::DashEncryption', request_name => 'encryption', traits => ['NameInRequest']);
  has PeriodTriggers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'periodTriggers', traits => ['NameInRequest']);
  has SegmentDurationSeconds => (is => 'ro', isa => 'Int', request_name => 'segmentDurationSeconds', traits => ['NameInRequest']);
  has SegmentTemplateFormat => (is => 'ro', isa => 'Str', request_name => 'segmentTemplateFormat', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { DashManifests => $value, ..., SegmentTemplateFormat => $value  });

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

  


=head2 PeriodTriggers => ArrayRef[Str|Undef]

  A list of triggers that controls when the outgoing Dynamic Adaptive
Streaming over HTTP (DASH) Media Presentation Description (MPD) will be
partitioned into multiple periods. If empty, the content will not be
partitioned into more than one period. If the list contains "ADS", new
periods will be created where the Asset contains SCTE-35 ad markers.


=head2 SegmentDurationSeconds => Int

  Duration (in seconds) of each segment. Actual segments will be rounded
to the nearest multiple of the source segment duration.


=head2 SegmentTemplateFormat => Str

  Determines the type of SegmentTemplate included in the Media
Presentation Description (MPD). When set to NUMBER_WITH_TIMELINE, a
full timeline is presented in each SegmentTemplate, with $Number$ media
URLs. When set to TIME_WITH_TIMELINE, a full timeline is presented in
each SegmentTemplate, with $Time$ media URLs. When set to
NUMBER_WITH_DURATION, only a duration is included in each
SegmentTemplate, with $Number$ media URLs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

