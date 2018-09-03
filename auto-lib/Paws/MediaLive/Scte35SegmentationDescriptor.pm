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

SCTE-35 Segmentation Descriptor.

=head1 ATTRIBUTES


=head2 DeliveryRestrictions => L<Paws::MediaLive::Scte35DeliveryRestrictions>

  SCTE-35 delivery restrictions.


=head2 B<REQUIRED> SegmentationCancelIndicator => Str

  SCTE-35 segmentation_descriptor segmentation_event_cancel_indicator.


=head2 SegmentationDuration => Int

  SCTE-35 segmentation_descriptor segmentation_duration specified in 90
KHz clock ticks.


=head2 B<REQUIRED> SegmentationEventId => Int

  SCTE-35 segmentation_descriptor segmentation_event_id.


=head2 SegmentationTypeId => Int

  SCTE-35 segmentation_descriptor segmentation_type_id.


=head2 SegmentationUpid => Str

  SCTE-35 segmentation_descriptor segmentation_upid as a hex string.


=head2 SegmentationUpidType => Int

  SCTE-35 segmentation_descriptor segmentation_upid_type.


=head2 SegmentNum => Int

  SCTE-35 segmentation_descriptor segment_num.


=head2 SegmentsExpected => Int

  SCTE-35 segmentation_descriptor segments_expected.


=head2 SubSegmentNum => Int

  SCTE-35 segmentation_descriptor sub_segment_num.


=head2 SubSegmentsExpected => Int

  SCTE-35 segmentation_descriptor sub_segments_expected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

