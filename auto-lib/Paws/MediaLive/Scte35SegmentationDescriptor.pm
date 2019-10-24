# Generated from default/object.tt
package Paws::MediaLive::Scte35SegmentationDescriptor;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaLive::Types qw/MediaLive_Scte35DeliveryRestrictions/;
  has DeliveryRestrictions => (is => 'ro', isa => MediaLive_Scte35DeliveryRestrictions);
  has SegmentationCancelIndicator => (is => 'ro', isa => Str, required => 1);
  has SegmentationDuration => (is => 'ro', isa => Int);
  has SegmentationEventId => (is => 'ro', isa => Int, required => 1);
  has SegmentationTypeId => (is => 'ro', isa => Int);
  has SegmentationUpid => (is => 'ro', isa => Str);
  has SegmentationUpidType => (is => 'ro', isa => Int);
  has SegmentNum => (is => 'ro', isa => Int);
  has SegmentsExpected => (is => 'ro', isa => Int);
  has SubSegmentNum => (is => 'ro', isa => Int);
  has SubSegmentsExpected => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SegmentationUpidType' => {
                                           'type' => 'Int'
                                         },
               'SegmentationEventId' => {
                                          'type' => 'Int'
                                        },
               'SubSegmentNum' => {
                                    'type' => 'Int'
                                  },
               'SegmentsExpected' => {
                                       'type' => 'Int'
                                     },
               'SegmentNum' => {
                                 'type' => 'Int'
                               },
               'SegmentationCancelIndicator' => {
                                                  'type' => 'Str'
                                                },
               'DeliveryRestrictions' => {
                                           'class' => 'Paws::MediaLive::Scte35DeliveryRestrictions',
                                           'type' => 'MediaLive_Scte35DeliveryRestrictions'
                                         },
               'SubSegmentsExpected' => {
                                          'type' => 'Int'
                                        },
               'SegmentationDuration' => {
                                           'type' => 'Int'
                                         },
               'SegmentationUpid' => {
                                       'type' => 'Str'
                                     },
               'SegmentationTypeId' => {
                                         'type' => 'Int'
                                       }
             },
  'NameInRequest' => {
                       'SegmentationUpidType' => 'segmentationUpidType',
                       'SegmentationEventId' => 'segmentationEventId',
                       'SubSegmentNum' => 'subSegmentNum',
                       'SegmentsExpected' => 'segmentsExpected',
                       'SegmentNum' => 'segmentNum',
                       'SegmentationCancelIndicator' => 'segmentationCancelIndicator',
                       'DeliveryRestrictions' => 'deliveryRestrictions',
                       'SubSegmentsExpected' => 'subSegmentsExpected',
                       'SegmentationDuration' => 'segmentationDuration',
                       'SegmentationUpid' => 'segmentationUpid',
                       'SegmentationTypeId' => 'segmentationTypeId'
                     },
  'IsRequired' => {
                    'SegmentationEventId' => 1,
                    'SegmentationCancelIndicator' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 DeliveryRestrictions => MediaLive_Scte35DeliveryRestrictions

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

