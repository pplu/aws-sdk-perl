# Generated from default/object.tt
package Paws::MediaLive::MsSmoothGroupSettings;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaLive::Types qw/MediaLive_OutputLocationRef/;
  has AcquisitionPointId => (is => 'ro', isa => Str);
  has AudioOnlyTimecodeControl => (is => 'ro', isa => Str);
  has CertificateMode => (is => 'ro', isa => Str);
  has ConnectionRetryInterval => (is => 'ro', isa => Int);
  has Destination => (is => 'ro', isa => MediaLive_OutputLocationRef, required => 1);
  has EventId => (is => 'ro', isa => Str);
  has EventIdMode => (is => 'ro', isa => Str);
  has EventStopBehavior => (is => 'ro', isa => Str);
  has FilecacheDuration => (is => 'ro', isa => Int);
  has FragmentLength => (is => 'ro', isa => Int);
  has InputLossAction => (is => 'ro', isa => Str);
  has NumRetries => (is => 'ro', isa => Int);
  has RestartDelay => (is => 'ro', isa => Int);
  has SegmentationMode => (is => 'ro', isa => Str);
  has SendDelayMs => (is => 'ro', isa => Int);
  has SparseTrackType => (is => 'ro', isa => Str);
  has StreamManifestBehavior => (is => 'ro', isa => Str);
  has TimestampOffset => (is => 'ro', isa => Str);
  has TimestampOffsetMode => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TimestampOffsetMode' => {
                                          'type' => 'Str'
                                        },
               'TimestampOffset' => {
                                      'type' => 'Str'
                                    },
               'ConnectionRetryInterval' => {
                                              'type' => 'Int'
                                            },
               'InputLossAction' => {
                                      'type' => 'Str'
                                    },
               'AcquisitionPointId' => {
                                         'type' => 'Str'
                                       },
               'SparseTrackType' => {
                                      'type' => 'Str'
                                    },
               'SegmentationMode' => {
                                       'type' => 'Str'
                                     },
               'StreamManifestBehavior' => {
                                             'type' => 'Str'
                                           },
               'EventStopBehavior' => {
                                        'type' => 'Str'
                                      },
               'SendDelayMs' => {
                                  'type' => 'Int'
                                },
               'Destination' => {
                                  'class' => 'Paws::MediaLive::OutputLocationRef',
                                  'type' => 'MediaLive_OutputLocationRef'
                                },
               'NumRetries' => {
                                 'type' => 'Int'
                               },
               'CertificateMode' => {
                                      'type' => 'Str'
                                    },
               'FilecacheDuration' => {
                                        'type' => 'Int'
                                      },
               'EventIdMode' => {
                                  'type' => 'Str'
                                },
               'EventId' => {
                              'type' => 'Str'
                            },
               'AudioOnlyTimecodeControl' => {
                                               'type' => 'Str'
                                             },
               'RestartDelay' => {
                                   'type' => 'Int'
                                 },
               'FragmentLength' => {
                                     'type' => 'Int'
                                   }
             },
  'NameInRequest' => {
                       'TimestampOffsetMode' => 'timestampOffsetMode',
                       'TimestampOffset' => 'timestampOffset',
                       'ConnectionRetryInterval' => 'connectionRetryInterval',
                       'InputLossAction' => 'inputLossAction',
                       'AcquisitionPointId' => 'acquisitionPointId',
                       'SparseTrackType' => 'sparseTrackType',
                       'SegmentationMode' => 'segmentationMode',
                       'StreamManifestBehavior' => 'streamManifestBehavior',
                       'EventStopBehavior' => 'eventStopBehavior',
                       'SendDelayMs' => 'sendDelayMs',
                       'Destination' => 'destination',
                       'NumRetries' => 'numRetries',
                       'CertificateMode' => 'certificateMode',
                       'FilecacheDuration' => 'filecacheDuration',
                       'EventIdMode' => 'eventIdMode',
                       'EventId' => 'eventId',
                       'AudioOnlyTimecodeControl' => 'audioOnlyTimecodeControl',
                       'RestartDelay' => 'restartDelay',
                       'FragmentLength' => 'fragmentLength'
                     },
  'IsRequired' => {
                    'Destination' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MsSmoothGroupSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MsSmoothGroupSettings object:

  $service_obj->Method(Att1 => { AcquisitionPointId => $value, ..., TimestampOffsetMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MsSmoothGroupSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AcquisitionPointId

=head1 DESCRIPTION

Ms Smooth Group Settings

=head1 ATTRIBUTES


=head2 AcquisitionPointId => Str

  The value of the "Acquisition Point Identity" element used in each
message placed in the sparse track. Only enabled if sparseTrackType is
not "none".


=head2 AudioOnlyTimecodeControl => Str

  If set to passthrough for an audio-only MS Smooth output, the fragment
absolute time will be set to the current timecode. This option does not
write timecodes to the audio elementary stream.


=head2 CertificateMode => Str

  If set to verifyAuthenticity, verify the https certificate chain to a
trusted Certificate Authority (CA). This will cause https outputs to
self-signed certificates to fail.


=head2 ConnectionRetryInterval => Int

  Number of seconds to wait before retrying connection to the IIS server
if the connection is lost. Content will be cached during this time and
the cache will be be delivered to the IIS server once the connection is
re-established.


=head2 B<REQUIRED> Destination => MediaLive_OutputLocationRef

  Smooth Streaming publish point on an IIS server. Elemental Live acts as
a "Push" encoder to IIS.


=head2 EventId => Str

  MS Smooth event ID to be sent to the IIS server. Should only be
specified if eventIdMode is set to useConfigured.


=head2 EventIdMode => Str

  Specifies whether or not to send an event ID to the IIS server. If no
event ID is sent and the same Live Event is used without changing the
publishing point, clients might see cached video from the previous run.
Options: - "useConfigured" - use the value provided in eventId -
"useTimestamp" - generate and send an event ID based on the current
timestamp - "noEventId" - do not send an event ID to the IIS server.


=head2 EventStopBehavior => Str

  When set to sendEos, send EOS signal to IIS server when stopping the
event


=head2 FilecacheDuration => Int

  Size in seconds of file cache for streaming outputs.


=head2 FragmentLength => Int

  Length of mp4 fragments to generate (in seconds). Fragment length must
be compatible with GOP size and framerate.


=head2 InputLossAction => Str

  Parameter that control output group behavior on input loss.


=head2 NumRetries => Int

  Number of retry attempts.


=head2 RestartDelay => Int

  Number of seconds before initiating a restart due to output failure,
due to exhausting the numRetries on one segment, or exceeding
filecacheDuration.


=head2 SegmentationMode => Str

  useInputSegmentation has been deprecated. The configured segment size
is always used.


=head2 SendDelayMs => Int

  Number of milliseconds to delay the output from the second pipeline.


=head2 SparseTrackType => Str

  If set to scte35, use incoming SCTE-35 messages to generate a sparse
track in this group of MS-Smooth outputs.


=head2 StreamManifestBehavior => Str

  When set to send, send stream manifest so publishing point doesn't
start until all streams start.


=head2 TimestampOffset => Str

  Timestamp offset for the event. Only used if timestampOffsetMode is set
to useConfiguredOffset.


=head2 TimestampOffsetMode => Str

  Type of timestamp date offset to use. - useEventStartDate: Use the date
the event was started as the offset - useConfiguredOffset: Use an
explicitly configured date as the offset



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

