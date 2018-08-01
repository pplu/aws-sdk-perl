package Paws::MediaPackage::DashPackage;
  use Moose;
  has AdsOnDeliveryRestrictions => (is => 'ro', isa => 'Str', request_name => 'adsOnDeliveryRestrictions', traits => ['NameInRequest']);
  has AdTriggers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'adTriggers', traits => ['NameInRequest']);
  has Encryption => (is => 'ro', isa => 'Paws::MediaPackage::DashEncryption', request_name => 'encryption', traits => ['NameInRequest']);
  has ManifestLayout => (is => 'ro', isa => 'Str', request_name => 'manifestLayout', traits => ['NameInRequest']);
  has ManifestWindowSeconds => (is => 'ro', isa => 'Int', request_name => 'manifestWindowSeconds', traits => ['NameInRequest']);
  has MinBufferTimeSeconds => (is => 'ro', isa => 'Int', request_name => 'minBufferTimeSeconds', traits => ['NameInRequest']);
  has MinUpdatePeriodSeconds => (is => 'ro', isa => 'Int', request_name => 'minUpdatePeriodSeconds', traits => ['NameInRequest']);
  has Profile => (is => 'ro', isa => 'Str', request_name => 'profile', traits => ['NameInRequest']);
  has SegmentDurationSeconds => (is => 'ro', isa => 'Int', request_name => 'segmentDurationSeconds', traits => ['NameInRequest']);
  has SegmentTemplateFormat => (is => 'ro', isa => 'Str', request_name => 'segmentTemplateFormat', traits => ['NameInRequest']);
  has StreamSelection => (is => 'ro', isa => 'Paws::MediaPackage::StreamSelection', request_name => 'streamSelection', traits => ['NameInRequest']);
  has SuggestedPresentationDelaySeconds => (is => 'ro', isa => 'Int', request_name => 'suggestedPresentationDelaySeconds', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::DashPackage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::DashPackage object:

  $service_obj->Method(Att1 => { AdsOnDeliveryRestrictions => $value, ..., SuggestedPresentationDelaySeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::DashPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->AdsOnDeliveryRestrictions

=head1 DESCRIPTION

A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.

=head1 ATTRIBUTES


=head2 AdsOnDeliveryRestrictions => Str

  


=head2 AdTriggers => ArrayRef[Str|Undef]

  


=head2 Encryption => L<Paws::MediaPackage::DashEncryption>

  


=head2 ManifestLayout => Str

  Determines the position of some tags in the Media Presentation
Description (MPD). When set to FULL, elements like SegmentTemplate and
ContentProtection are included in each Representation. When set to
COMPACT, duplicate elements are combined and presented at the
AdaptationSet level.


=head2 ManifestWindowSeconds => Int

  Time window (in seconds) contained in each manifest.


=head2 MinBufferTimeSeconds => Int

  Minimum duration (in seconds) that a player will buffer media before
starting the presentation.


=head2 MinUpdatePeriodSeconds => Int

  Minimum duration (in seconds) between potential changes to the Dynamic
Adaptive Streaming over HTTP (DASH) Media Presentation Description
(MPD).


=head2 Profile => Str

  The Dynamic Adaptive Streaming over HTTP (DASH) profile type. When set
to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled.


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


=head2 StreamSelection => L<Paws::MediaPackage::StreamSelection>

  


=head2 SuggestedPresentationDelaySeconds => Int

  Duration (in seconds) to delay live content before presentation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

