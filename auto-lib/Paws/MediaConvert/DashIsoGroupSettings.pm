# Generated from default/object.tt
package Paws::MediaConvert::DashIsoGroupSettings;
  use Moo;
  use Types::Standard qw/ArrayRef Str Int/;
  use Paws::MediaConvert::Types qw/MediaConvert_DashIsoEncryptionSettings MediaConvert_DestinationSettings MediaConvert_DashAdditionalManifest/;
  has AdditionalManifests => (is => 'ro', isa => ArrayRef[MediaConvert_DashAdditionalManifest]);
  has BaseUrl => (is => 'ro', isa => Str);
  has Destination => (is => 'ro', isa => Str);
  has DestinationSettings => (is => 'ro', isa => MediaConvert_DestinationSettings);
  has Encryption => (is => 'ro', isa => MediaConvert_DashIsoEncryptionSettings);
  has FragmentLength => (is => 'ro', isa => Int);
  has HbbtvCompliance => (is => 'ro', isa => Str);
  has MinBufferTime => (is => 'ro', isa => Int);
  has MpdProfile => (is => 'ro', isa => Str);
  has SegmentControl => (is => 'ro', isa => Str);
  has SegmentLength => (is => 'ro', isa => Int);
  has WriteSegmentTimelineInRepresentation => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MpdProfile' => 'mpdProfile',
                       'DestinationSettings' => 'destinationSettings',
                       'Destination' => 'destination',
                       'WriteSegmentTimelineInRepresentation' => 'writeSegmentTimelineInRepresentation',
                       'SegmentLength' => 'segmentLength',
                       'MinBufferTime' => 'minBufferTime',
                       'HbbtvCompliance' => 'hbbtvCompliance',
                       'FragmentLength' => 'fragmentLength',
                       'SegmentControl' => 'segmentControl',
                       'Encryption' => 'encryption',
                       'BaseUrl' => 'baseUrl',
                       'AdditionalManifests' => 'additionalManifests'
                     },
  'types' => {
               'BaseUrl' => {
                              'type' => 'Str'
                            },
               'AdditionalManifests' => {
                                          'class' => 'Paws::MediaConvert::DashAdditionalManifest',
                                          'type' => 'ArrayRef[MediaConvert_DashAdditionalManifest]'
                                        },
               'Encryption' => {
                                 'class' => 'Paws::MediaConvert::DashIsoEncryptionSettings',
                                 'type' => 'MediaConvert_DashIsoEncryptionSettings'
                               },
               'FragmentLength' => {
                                     'type' => 'Int'
                                   },
               'SegmentControl' => {
                                     'type' => 'Str'
                                   },
               'Destination' => {
                                  'type' => 'Str'
                                },
               'WriteSegmentTimelineInRepresentation' => {
                                                           'type' => 'Str'
                                                         },
               'SegmentLength' => {
                                    'type' => 'Int'
                                  },
               'HbbtvCompliance' => {
                                      'type' => 'Str'
                                    },
               'MinBufferTime' => {
                                    'type' => 'Int'
                                  },
               'MpdProfile' => {
                                 'type' => 'Str'
                               },
               'DestinationSettings' => {
                                          'class' => 'Paws::MediaConvert::DestinationSettings',
                                          'type' => 'MediaConvert_DestinationSettings'
                                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DashIsoGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::DashIsoGroupSettings object:

  $service_obj->Method(Att1 => { AdditionalManifests => $value, ..., WriteSegmentTimelineInRepresentation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::DashIsoGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalManifests

=head1 DESCRIPTION

Required when you set (Type) under
(OutputGroups)E<gt>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS.

=head1 ATTRIBUTES


=head2 AdditionalManifests => ArrayRef[MediaConvert_DashAdditionalManifest]

  By default, the service creates one .mpd DASH manifest for each DASH
ISO output group in your job. This default manifest references every
output in the output group. To create additional DASH manifests that
reference a subset of the outputs in the output group, specify a list
of them here.


=head2 BaseUrl => Str

  A partial URI prefix that will be put in the manifest (.mpd) file at
the top level BaseURL element. Can be used if streams are delivered
from a different URL than the manifest file.


=head2 Destination => Str

  Use Destination (Destination) to specify the S3 output location and the
output filename base. Destination accepts format identifiers. If you do
not specify the base filename in the URI, the service will use the
filename of the input file. If your job has multiple inputs, the
service uses the filename of the first input file.


=head2 DestinationSettings => MediaConvert_DestinationSettings

  Settings associated with the destination. Will vary based on the type
of destination


=head2 Encryption => MediaConvert_DashIsoEncryptionSettings

  DRM settings.


=head2 FragmentLength => Int

  Length of fragments to generate (in seconds). Fragment length must be
compatible with GOP size and Framerate. Note that fragments will end on
the next keyframe after this number of seconds, so actual fragment
length may be longer. When Emit Single File is checked, the
fragmentation is internal to a single output file and it does not cause
the creation of many output files as in other output types.


=head2 HbbtvCompliance => Str

  Supports HbbTV specification as indicated


=head2 MinBufferTime => Int

  Minimum time of initially buffered media that is needed to ensure
smooth playout.


=head2 MpdProfile => Str

  Specify whether your DASH profile is on-demand or main. When you choose
Main profile (MAIN_PROFILE), the service signals
urn:mpeg:dash:profile:isoff-main:2011 in your .mpd DASH manifest. When
you choose On-demand (ON_DEMAND_PROFILE), the service signals
urn:mpeg:dash:profile:isoff-on-demand:2011 in your .mpd. When you
choose On-demand, you must also set the output group setting Segment
control (SegmentControl) to Single file (SINGLE_FILE).


=head2 SegmentControl => Str

  When set to SINGLE_FILE, a single output file is generated, which is
internally segmented using the Fragment Length and Segment Length. When
set to SEGMENTED_FILES, separate segment files will be created.


=head2 SegmentLength => Int

  Length of mpd segments to create (in seconds). Note that segments will
end on the next keyframe after this number of seconds, so actual
segment length may be longer. When Emit Single File is checked, the
segmentation is internal to a single output file and it does not cause
the creation of many output files as in other output types.


=head2 WriteSegmentTimelineInRepresentation => Str

  If you get an HTTP error in the 400 range when you play back your DASH
output, enable this setting and run your transcoding job again. When
you enable this setting, the service writes precise segment durations
in the DASH manifest. The segment duration information appears inside
the SegmentTimeline element, inside SegmentTemplate at the
Representation level. When you don't enable this setting, the service
writes approximate segment durations in your DASH manifest.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

