package Paws::MediaLive::Scte35SegmentationDescriptor;
  use Moose;
  has DeliveryRestrictions => (is => 'ro', isa => 'Paws::MediaLive::Scte35DeliveryRestrictions', request_name => 'deliveryRestrictions', traits => ['NameInRequest']);
  has SegmentationCancelIndicator => (is => 'ro', isa => 'Str', request_name => 'segmentationCancelIndicator', traits => ['NameInRequest'], required => 1);
  has SegmentationDuration => (is => 'ro', isa => 'Int', request_name => 'segmentationDuration', traits => ['NameInRequest']);
  has SegmentationEventId => (is => 'ro', isa => 'Int', request_name => 'segmentationEventId', traits => ['NameInRequest'], required => 1);
  has SegmentationTypeId => (is => 'ro', isa => 'Int', request_name => 'segmentationTypeId', traits => ['NameInRequest']);
  has SegmentationUpid => (is => 'ro', isa => 'Str', request_name => 'segmentationUpid', traits => ['NameInRequest']);
  has SegmentationUpidType => (is => 'ro', isa => 'Int', request_name => 'segmentationUpidType', traits => ['NameInRequest']);
  has SegmentNum => (is => 'ro', isa => 'Int', request_name => 'segmentNum', traits => ['NameInRequest']);
  has SegmentsExpected => (is => 'ro', isa => 'Int', request_name => 'segmentsExpected', traits => ['NameInRequest']);
  has SubSegmentNum => (is => 'ro', isa => 'Int', request_name => 'subSegmentNum', traits => ['NameInRequest']);
  has SubSegmentsExpected => (is => 'ro', isa => 'Int', request_name => 'subSegmentsExpected', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Scte35SegmentationDescriptor

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Scte35SegmentationDescriptor object:

  $service_obj->Method(Att1 => { DeliveryRestrictions => $value, ..., SubSegmentsExpected => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Scte35SegmentationDescriptor object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryRestrictions

=head1 DESCRIPTION

Corresponds to SCTE-35 segmentation_descriptor.

=head1 ATTRIBUTES


=head2 DeliveryRestrictions => L<Paws::MediaLive::Scte35DeliveryRestrictions>

  Holds the four SCTE-35 delivery restriction parameters.


=head2 B<REQUIRED> SegmentationCancelIndicator => Str

  Corresponds to SCTE-35 segmentation_event_cancel_indicator.


=head2 SegmentationDuration => Int

  Corresponds to SCTE-35 segmentation_duration. Optional. The duration
for the time_signal, in 90 KHz ticks. To convert seconds to ticks,
multiple the seconds by 90,000. Enter time in 90 KHz clock ticks. If
you do not enter a duration, the time_signal will continue until you
insert a cancellation message.


=head2 B<REQUIRED> SegmentationEventId => Int

  Corresponds to SCTE-35 segmentation_event_id.


=head2 SegmentationTypeId => Int

  Corresponds to SCTE-35 segmentation_type_id. One of the
segmentation_type_id values listed in the SCTE-35 specification. On the
console, enter the ID in decimal (for example, "52"). In the CLI, API,
or an SDK, enter the ID in hex (for example, "0x34") or decimal (for
example, "52").


=head2 SegmentationUpid => Str

  Corresponds to SCTE-35 segmentation_upid. Enter a string containing the
hexadecimal representation of the characters that make up the SCTE-35
segmentation_upid value. Must contain an even number of hex characters.
Do not include spaces between each hex pair. For example, the ASCII
"ADS Information" becomes hex "41445320496e666f726d6174696f6e.


=head2 SegmentationUpidType => Int

  Corresponds to SCTE-35 segmentation_upid_type. On the console, enter
one of the types listed in the SCTE-35 specification, converted to a
decimal. For example, "0x0C" hex from the specification is "12" in
decimal. In the CLI, API, or an SDK, enter one of the types listed in
the SCTE-35 specification, in either hex (for example, "0x0C" ) or in
decimal (for example, "12").


=head2 SegmentNum => Int

  Corresponds to SCTE-35 segment_num. A value that is valid for the
specified segmentation_type_id.


=head2 SegmentsExpected => Int

  Corresponds to SCTE-35 segments_expected. A value that is valid for the
specified segmentation_type_id.


=head2 SubSegmentNum => Int

  Corresponds to SCTE-35 sub_segment_num. A value that is valid for the
specified segmentation_type_id.


=head2 SubSegmentsExpected => Int

  Corresponds to SCTE-35 sub_segments_expected. A value that is valid for
the specified segmentation_type_id.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

