
package Paws::MediaLive::UpdateChannel;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelId', required => 1);
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputDestination]', traits => ['NameInRequest'], request_name => 'destinations');
  has EncoderSettings => (is => 'ro', isa => 'Paws::MediaLive::EncoderSettings', traits => ['NameInRequest'], request_name => 'encoderSettings');
  has InputAttachments => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputAttachment]', traits => ['NameInRequest'], request_name => 'inputAttachments');
  has InputSpecification => (is => 'ro', isa => 'Paws::MediaLive::InputSpecification', traits => ['NameInRequest'], request_name => 'inputSpecification');
  has LogLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logLevel');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/channels/{channelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::UpdateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateChannel - Arguments for method UpdateChannel on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChannel on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method UpdateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChannel.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $UpdateChannelResponse = $medialive->UpdateChannel(
      ChannelId    => 'My__string',
      Destinations => [
        {
          Id       => 'My__string',
          Settings => [
            {
              Username      => 'My__string',
              StreamName    => 'My__string',
              PasswordParam => 'My__string',
              Url           => 'My__string',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      EncoderSettings => {
        VideoDescriptions => [
          {
            Name   => 'My__string',
            Height => 1,              # OPTIONAL
            ScalingBehavior =>
              'DEFAULT',    # values: DEFAULT, STRETCH_TO_OUTPUT; OPTIONAL
            Width         => 1,    # OPTIONAL
            Sharpness     => 1,    # max: 100; OPTIONAL
            CodecSettings => {
              H264Settings => {
                AdaptiveQuantization => 'HIGH'
                ,    # values: HIGH, HIGHER, LOW, MAX, MEDIUM, OFF; OPTIONAL
                FramerateDenominator => 1,    # OPTIONAL
                FramerateNumerator   => 1,    # OPTIONAL
                SpatialAq => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                Slices    => 1,            # min: 1, max: 32; OPTIONAL
                RateControlMode => 'CBR',  # values: CBR, VBR; OPTIONAL
                TimecodeInsertion =>
                  'DISABLED',    # values: DISABLED, PIC_TIMING_SEI; OPTIONAL
                LookAheadRateControl =>
                  'HIGH',        # values: HIGH, LOW, MEDIUM; OPTIONAL
                Bitrate          => 1,           # min: 1000, ; OPTIONAL
                GopClosedCadence => 1,           # OPTIONAL
                Profile          => 'BASELINE'
                , # values: BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN; OPTIONAL
                Softness   => 1,           # max: 128; OPTIONAL
                TemporalAq => 'DISABLED',  # values: DISABLED, ENABLED; OPTIONAL
                NumRefFrames   => 1,       # min: 1, max: 6; OPTIONAL
                ParDenominator => 1,       # min: 1, ; OPTIONAL
                BufSize        => 1,       # OPTIONAL
                AfdSignaling   => 'AUTO',  # values: AUTO, FIXED, NONE; OPTIONAL
                MinIInterval   => 1,       # max: 30; OPTIONAL
                FlickerAq => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                SceneChangeDetect =>
                  'DISABLED',              # values: DISABLED, ENABLED; OPTIONAL
                GopNumBFrames    => 1,                        # max: 7; OPTIONAL
                FramerateControl => 'INITIALIZE_FROM_SOURCE'
                ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                GopBReference =>
                  'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                ScanType =>
                  'INTERLACED',    # values: INTERLACED, PROGRESSIVE; OPTIONAL
                FixedAfd => 'AFD_0000'
                , # values: AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111; OPTIONAL
                GopSize    => 1,                         # OPTIONAL
                ParControl => 'INITIALIZE_FROM_SOURCE'
                ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                MaxBitrate    => 1,          # min: 1000, ; OPTIONAL
                GopSizeUnits  => 'FRAMES',   # values: FRAMES, SECONDS; OPTIONAL
                ColorMetadata => 'IGNORE',   # values: IGNORE, INSERT; OPTIONAL
                ParNumerator  => 1,          # OPTIONAL
                Level => 'H264_LEVEL_1'
                , # values: H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO; OPTIONAL
                Syntax => 'DEFAULT',    # values: DEFAULT, RP2027; OPTIONAL
                EntropyEncoding => 'CABAC',    # values: CABAC, CAVLC; OPTIONAL
                BufFillPct      => 1,          # max: 100; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            RespondToAfd =>
              'NONE',    # values: NONE, PASSTHROUGH, RESPOND; OPTIONAL
          },
          ...
        ],
        OutputGroups => [
          {
            OutputGroupSettings => {
              ArchiveGroupSettings => {
                Destination => { DestinationRefId => 'My__string', },
                RolloverInterval => 1,    # min: 1, ; OPTIONAL
              },    # OPTIONAL
              HlsGroupSettings => {
                Destination => { DestinationRefId => 'My__string', },
                EncryptionType =>
                  'AES128',    # values: AES128, SAMPLE_AES; OPTIONAL
                IvInManifest => 'EXCLUDE',  # values: EXCLUDE, INCLUDE; OPTIONAL
                TimestampDeltaMilliseconds => 1,              # OPTIONAL
                BaseUrlManifest            => 'My__string',
                CaptionLanguageMappings    => [
                  {
                    LanguageDescription =>
                      'My__stringMin1',    # min: 1, ; OPTIONAL
                    LanguageCode =>
                      'My__stringMin3Max3',    # min: 3, max: 3; OPTIONAL
                    CaptionChannel => 1,       # min: 1, max: 4

                  },
                  ...
                ],                             # OPTIONAL
                TsFileMode => 'SEGMENTED_FILES'
                ,    # values: SEGMENTED_FILES, SINGLE_FILE; OPTIONAL
                KeepSegments   => 1,              # min: 1, ; OPTIONAL
                KeyFormat      => 'My__string',
                BaseUrlContent => 'My__string',
                CodecSpecification =>
                  'RFC_4281',    # values: RFC_4281, RFC_6381; OPTIONAL
                ProgramDateTimePeriod   => 1,           # max: 3600; OPTIONAL
                SegmentsPerSubdirectory => 1,           # min: 1, ; OPTIONAL
                SegmentLength           => 1,           # min: 1, ; OPTIONAL
                IvSource                => 'EXPLICIT'
                ,    # values: EXPLICIT, FOLLOWS_SEGMENT_NUMBER; OPTIONAL
                ManifestCompression => 'GZIP',    # values: GZIP, NONE; OPTIONAL
                ManifestDurationFormat =>
                  'FLOATING_POINT',  # values: FLOATING_POINT, INTEGER; OPTIONAL
                KeyFormatVersions  => 'My__string',
                DirectoryStructure => 'SINGLE_DIRECTORY'
                ,  # values: SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM; OPTIONAL
                MinSegmentLength    => 1,    # OPTIONAL
                KeyProviderSettings => {
                  StaticKeySettings => {
                    StaticKeyValue => 'My__stringMin32Max32', # min: 32, max: 32
                    KeyProviderServer => {
                      Uri           => 'My__string',
                      Username      => 'My__string',
                      PasswordParam => 'My__string',
                    },                                        # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                HlsCdnSettings => {
                  HlsBasicPutSettings => {
                    RestartDelay            => 1,    # max: 15
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    NumRetries              => 1,    # OPTIONAL
                    FilecacheDuration       => 1,    # max: 600; OPTIONAL
                  },    # OPTIONAL
                  HlsAkamaiSettings => {
                    Token => 'My__string',
                    HttpTransferMode =>
                      'CHUNKED',    # values: CHUNKED, NON_CHUNKED; OPTIONAL
                    RestartDelay            => 1,           # max: 15
                    Salt                    => 'My__string',
                    ConnectionRetryInterval => 1,           # OPTIONAL
                    NumRetries              => 1,           # OPTIONAL
                    FilecacheDuration       => 1,           # max: 600; OPTIONAL
                  },    # OPTIONAL
                  HlsWebdavSettings => {
                    HttpTransferMode =>
                      'CHUNKED',    # values: CHUNKED, NON_CHUNKED; OPTIONAL
                    RestartDelay            => 1,    # max: 15
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    NumRetries              => 1,    # OPTIONAL
                    FilecacheDuration       => 1,    # max: 600; OPTIONAL
                  },    # OPTIONAL
                  HlsMediaStoreSettings => {
                    MediaStoreStorageClass =>
                      'TEMPORAL',    # values: TEMPORAL; OPTIONAL
                    RestartDelay            => 1,    # max: 15
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    NumRetries              => 1,    # OPTIONAL
                    FilecacheDuration       => 1,    # max: 600; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                IndexNSegments => 1,    # min: 3, ; OPTIONAL
                TimedMetadataId3Frame =>
                  'NONE',               # values: NONE, PRIV, TDRL; OPTIONAL
                ProgramDateTime =>
                  'EXCLUDE',            # values: EXCLUDE, INCLUDE; OPTIONAL
                InputLossAction =>
                  'EMIT_OUTPUT',   # values: EMIT_OUTPUT, PAUSE_OUTPUT; OPTIONAL
                OutputSelection => 'MANIFESTS_AND_SEGMENTS'
                ,    # values: MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY; OPTIONAL
                AdMarkers => [
                  'ADOBE', ...    # values: ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
                ],                # OPTIONAL
                Mode => 'LIVE',   # values: LIVE, VOD; OPTIONAL
                SegmentationMode => 'USE_INPUT_SEGMENTATION'
                , # values: USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION; OPTIONAL
                CaptionLanguageSetting =>
                  'INSERT',    # values: INSERT, NONE, OMIT; OPTIONAL
                ClientCache => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                StreamInfResolution =>
                  'EXCLUDE',               # values: EXCLUDE, INCLUDE; OPTIONAL
                ConstantIv => 'My__stringMin32Max32',    # min: 32, max: 32
                TimedMetadataId3Period => 1,             # OPTIONAL
              },    # OPTIONAL
              MsSmoothGroupSettings => {
                Destination         => { DestinationRefId => 'My__string', },
                TimestampOffsetMode => 'USE_CONFIGURED_OFFSET'
                , # values: USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE; OPTIONAL
                SparseTrackType => 'NONE',    # values: NONE, SCTE_35; OPTIONAL
                StreamManifestBehavior =>
                  'DO_NOT_SEND',    # values: DO_NOT_SEND, SEND; OPTIONAL
                SendDelayMs              => 1,            # max: 10000; OPTIONAL
                AudioOnlyTimecodeControl => 'PASSTHROUGH'
                ,    # values: PASSTHROUGH, USE_CONFIGURED_CLOCK; OPTIONAL
                RestartDelay            => 1,              # OPTIONAL
                TimestampOffset         => 'My__string',
                ConnectionRetryInterval => 1,              # OPTIONAL
                AcquisitionPointId      => 'My__string',
                InputLossAction =>
                  'EMIT_OUTPUT',   # values: EMIT_OUTPUT, PAUSE_OUTPUT; OPTIONAL
                SegmentationMode => 'USE_INPUT_SEGMENTATION'
                , # values: USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION; OPTIONAL
                EventStopBehavior => 'NONE',  # values: NONE, SEND_EOS; OPTIONAL
                NumRetries        => 1,       # OPTIONAL
                CertificateMode => 'SELF_SIGNED'
                ,    # values: SELF_SIGNED, VERIFY_AUTHENTICITY; OPTIONAL
                FilecacheDuration => 1,              # OPTIONAL
                EventId           => 'My__string',
                EventIdMode       => 'NO_EVENT_ID'
                , # values: NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP; OPTIONAL
                FragmentLength => 1,    # min: 1, ; OPTIONAL
              },    # OPTIONAL
              UdpGroupSettings => {
                TimedMetadataId3Frame =>
                  'NONE',    # values: NONE, PRIV, TDRL; OPTIONAL
                InputLossAction => 'DROP_PROGRAM'
                ,    # values: DROP_PROGRAM, DROP_TS, EMIT_PROGRAM; OPTIONAL
                TimedMetadataId3Period => 1,    # OPTIONAL
              },    # OPTIONAL
              RtmpGroupSettings => {
                CacheFullBehavior => 'DISCONNECT_IMMEDIATELY'
                ,    # values: DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER; OPTIONAL
                RestartDelay => 1,      # OPTIONAL
                CaptionData  => 'ALL'
                ,    # values: ALL, FIELD1_608, FIELD1_AND_FIELD2_608; OPTIONAL
                AuthenticationScheme =>
                  'AKAMAI',    # values: AKAMAI, COMMON; OPTIONAL
                CacheLength => 1,    # min: 30, ; OPTIONAL
              },    # OPTIONAL
            },
            Outputs => [
              {
                OutputSettings => {
                  UdpOutputSettings => {
                    ContainerSettings => {
                      M2tsSettings => {
                        DvbTdtSettings => {
                          RepInterval => 1,    # min: 1000, max: 30000; OPTIONAL
                        },    # OPTIONAL
                        TimedMetadataBehavior => 'NO_PASSTHROUGH'
                        ,     # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                        SegmentationMarkers => 'EBP'
                        , # values: EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART; OPTIONAL
                        Klv => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        DvbTeletextPid => 'My__string',
                        PcrPid         => 'My__string',
                        Bitrate        => 1,              # OPTIONAL
                        AribCaptionsPidControl =>
                          'AUTO',    # values: AUTO, USE_CONFIGURED; OPTIONAL
                        TransportStreamId => 1,    # max: 65535; OPTIONAL
                        FragmentTime      => 1,    # OPTIONAL
                        SegmentationTime  => 1,    # OPTIONAL
                        EbpAudioInterval => 'VIDEO_AND_FIXED_INTERVALS'
                        , # values: VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL; OPTIONAL
                        PatInterval => 1,              # max: 1000; OPTIONAL
                        KlvDataPids => 'My__string',
                        AudioBufferModel =>
                          'ATSC',    # values: ATSC, DVB; OPTIONAL
                        PcrControl => 'CONFIGURED_PCR_PERIOD'
                        , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                        SegmentationStyle => 'MAINTAIN_CADENCE'
                        ,    # values: MAINTAIN_CADENCE, RESET_CADENCE; OPTIONAL
                        EsRateInPes =>
                          'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                        PmtPid => 'My__string',
                        Scte35Control =>
                          'NONE',       # values: NONE, PASSTHROUGH; OPTIONAL
                        AbsentInputAudioBehavior =>
                          'DROP',       # values: DROP, ENCODE_SILENCE; OPTIONAL
                        Scte27Pids       => 'My__string',
                        TimedMetadataPid => 'My__string',
                        Arib =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        NullPacketBitrate => 1,                       # OPTIONAL
                        EbpPlacement      => 'VIDEO_AND_AUDIO_PIDS'
                        ,    # values: VIDEO_AND_AUDIO_PIDS, VIDEO_PID; OPTIONAL
                        AudioPids         => 'My__string',
                        EtvSignalPid      => 'My__string',
                        AudioFramesPerPes => 1,           # OPTIONAL
                        ProgramNum        => 1,           # max: 65535; OPTIONAL
                        DvbNitSettings    => {
                          NetworkId => 1,                 # max: 65536
                          NetworkName =>
                            'My__stringMin1Max256',       # min: 1, max: 256
                          RepInterval => 1,    # min: 25, max: 10000; OPTIONAL
                        },    # OPTIONAL
                        RateMode   => 'CBR',        # values: CBR, VBR; OPTIONAL
                        DvbSubPids => 'My__string',
                        DvbSdtSettings => {
                          RepInterval => 1,    # min: 25, max: 2000; OPTIONAL
                          OutputSdt => 'SDT_FOLLOW'
                          , # values: SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE; OPTIONAL
                          ServiceProviderName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                          ServiceName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                        },    # OPTIONAL
                        AribCaptionsPid => 'My__string',
                        Ebif => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        EcmPid    => 'My__string',
                        Scte35Pid => 'My__string',
                        BufferModel =>
                          'MULTIPLEX',     # values: MULTIPLEX, NONE; OPTIONAL
                        AudioStreamType => 'ATSC', # values: ATSC, DVB; OPTIONAL
                        EbpLookaheadMs  => 1,      # max: 10000; OPTIONAL
                        CcDescriptor =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        PcrPeriod      => 1,              # max: 500; OPTIONAL
                        PmtInterval    => 1,              # max: 1000; OPTIONAL
                        VideoPid       => 'My__string',
                        EtvPlatformPid => 'My__string',
                      },    # OPTIONAL
                    },
                    Destination => { DestinationRefId => 'My__string', },
                    BufferMsec        => 1,    # max: 10000; OPTIONAL
                    FecOutputSettings => {
                      IncludeFec =>
                        'COLUMN',    # values: COLUMN, COLUMN_AND_ROW; OPTIONAL
                      RowLength   => 1,    # min: 1, max: 20; OPTIONAL
                      ColumnDepth => 1,    # min: 4, max: 20; OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  RtmpOutputSettings => {
                    Destination => { DestinationRefId => 'My__string', },
                    ConnectionRetryInterval => 1,           # min: 1, ; OPTIONAL
                    NumRetries              => 1,           # OPTIONAL
                    CertificateMode         => 'SELF_SIGNED'
                    ,    # values: SELF_SIGNED, VERIFY_AUTHENTICITY; OPTIONAL
                  },    # OPTIONAL
                  MsSmoothOutputSettings => { NameModifier => 'My__string', }
                  ,     # OPTIONAL
                  HlsOutputSettings => {
                    HlsSettings => {
                      AudioOnlyHlsSettings => {
                        AudioOnlyImage => {
                          Uri           => 'My__string',
                          Username      => 'My__string',
                          PasswordParam => 'My__string',
                        },    # OPTIONAL
                        AudioTrackType => 'ALTERNATE_AUDIO_AUTO_SELECT'
                        , # values: ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM; OPTIONAL
                        AudioGroupId => 'My__string',
                      },    # OPTIONAL
                      StandardHlsSettings => {
                        M3u8Settings => {
                          TimedMetadataBehavior => 'NO_PASSTHROUGH'
                          ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                          PcrPid => 'My__string',
                          TransportStreamId => 1,    # max: 65535; OPTIONAL
                          PatInterval       => 1,    # max: 1000; OPTIONAL
                          PcrControl => 'CONFIGURED_PCR_PERIOD'
                          , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                          PmtPid           => 'My__string',
                          TimedMetadataPid => 'My__string',
                          AudioPids        => 'My__string',
                          Scte35Behavior   => 'NO_PASSTHROUGH'
                          ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                          AudioFramesPerPes => 1,    # OPTIONAL
                          ProgramNum        => 1,    # max: 65535; OPTIONAL
                          EcmPid      => 'My__string',
                          Scte35Pid   => 'My__string',
                          PcrPeriod   => 1,              # max: 500; OPTIONAL
                          PmtInterval => 1,              # max: 1000; OPTIONAL
                          VideoPid    => 'My__string',
                        },
                        AudioRenditionSets => 'My__string',
                      },    # OPTIONAL
                    },
                    NameModifier    => 'My__stringMin1',    # min: 1, ; OPTIONAL
                    SegmentModifier => 'My__string',
                  },    # OPTIONAL
                  ArchiveOutputSettings => {
                    ContainerSettings => {
                      M2tsSettings => {
                        DvbTdtSettings => {
                          RepInterval => 1,    # min: 1000, max: 30000; OPTIONAL
                        },    # OPTIONAL
                        TimedMetadataBehavior => 'NO_PASSTHROUGH'
                        ,     # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                        SegmentationMarkers => 'EBP'
                        , # values: EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART; OPTIONAL
                        Klv => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        DvbTeletextPid => 'My__string',
                        PcrPid         => 'My__string',
                        Bitrate        => 1,              # OPTIONAL
                        AribCaptionsPidControl =>
                          'AUTO',    # values: AUTO, USE_CONFIGURED; OPTIONAL
                        TransportStreamId => 1,    # max: 65535; OPTIONAL
                        FragmentTime      => 1,    # OPTIONAL
                        SegmentationTime  => 1,    # OPTIONAL
                        EbpAudioInterval => 'VIDEO_AND_FIXED_INTERVALS'
                        , # values: VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL; OPTIONAL
                        PatInterval => 1,              # max: 1000; OPTIONAL
                        KlvDataPids => 'My__string',
                        AudioBufferModel =>
                          'ATSC',    # values: ATSC, DVB; OPTIONAL
                        PcrControl => 'CONFIGURED_PCR_PERIOD'
                        , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                        SegmentationStyle => 'MAINTAIN_CADENCE'
                        ,    # values: MAINTAIN_CADENCE, RESET_CADENCE; OPTIONAL
                        EsRateInPes =>
                          'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                        PmtPid => 'My__string',
                        Scte35Control =>
                          'NONE',       # values: NONE, PASSTHROUGH; OPTIONAL
                        AbsentInputAudioBehavior =>
                          'DROP',       # values: DROP, ENCODE_SILENCE; OPTIONAL
                        Scte27Pids       => 'My__string',
                        TimedMetadataPid => 'My__string',
                        Arib =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        NullPacketBitrate => 1,                       # OPTIONAL
                        EbpPlacement      => 'VIDEO_AND_AUDIO_PIDS'
                        ,    # values: VIDEO_AND_AUDIO_PIDS, VIDEO_PID; OPTIONAL
                        AudioPids         => 'My__string',
                        EtvSignalPid      => 'My__string',
                        AudioFramesPerPes => 1,           # OPTIONAL
                        ProgramNum        => 1,           # max: 65535; OPTIONAL
                        DvbNitSettings    => {
                          NetworkId => 1,                 # max: 65536
                          NetworkName =>
                            'My__stringMin1Max256',       # min: 1, max: 256
                          RepInterval => 1,    # min: 25, max: 10000; OPTIONAL
                        },    # OPTIONAL
                        RateMode   => 'CBR',        # values: CBR, VBR; OPTIONAL
                        DvbSubPids => 'My__string',
                        DvbSdtSettings => {
                          RepInterval => 1,    # min: 25, max: 2000; OPTIONAL
                          OutputSdt => 'SDT_FOLLOW'
                          , # values: SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE; OPTIONAL
                          ServiceProviderName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                          ServiceName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                        },    # OPTIONAL
                        AribCaptionsPid => 'My__string',
                        Ebif => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        EcmPid    => 'My__string',
                        Scte35Pid => 'My__string',
                        BufferModel =>
                          'MULTIPLEX',     # values: MULTIPLEX, NONE; OPTIONAL
                        AudioStreamType => 'ATSC', # values: ATSC, DVB; OPTIONAL
                        EbpLookaheadMs  => 1,      # max: 10000; OPTIONAL
                        CcDescriptor =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        PcrPeriod      => 1,              # max: 500; OPTIONAL
                        PmtInterval    => 1,              # max: 1000; OPTIONAL
                        VideoPid       => 'My__string',
                        EtvPlatformPid => 'My__string',
                      },    # OPTIONAL
                    },
                    Extension    => 'My__string',
                    NameModifier => 'My__string',
                  },    # OPTIONAL
                },
                VideoDescriptionName => 'My__string',
                OutputName =>
                  'My__stringMin1Max255',    # min: 1, max: 255; OPTIONAL
                AudioDescriptionNames   => [ 'My__string', ... ],    # OPTIONAL
                CaptionDescriptionNames => [ 'My__string', ... ],    # OPTIONAL
              },
              ...
            ],
            Name => 'My__stringMax32',    # max: 32; OPTIONAL
          },
          ...
        ],
        AudioDescriptions => [
          {
            AudioSelectorName          => 'My__string',
            Name                       => 'My__string',
            AudioNormalizationSettings => {
              TargetLkfs => 1,            # OPTIONAL
              Algorithm =>
                'ITU_1770_1',    # values: ITU_1770_1, ITU_1770_2; OPTIONAL
              AlgorithmControl =>
                'CORRECT_AUDIO',    # values: CORRECT_AUDIO; OPTIONAL
            },    # OPTIONAL
            StreamName => 'My__string',
            LanguageCodeControl =>
              'FOLLOW_INPUT',   # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
            RemixSettings => {
              ChannelMappings => [
                {
                  InputChannelLevels => [
                    {
                      InputChannel => 1,    # max: 15
                      Gain         => 1,    # min: -60, max: 6

                    },
                    ...
                  ],
                  OutputChannel => 1,       # max: 7; OPTIONAL

                },
                ...
              ],
              ChannelsIn  => 1,             # min: 1, max: 16; OPTIONAL
              ChannelsOut => 1,             # min: 1, max: 8; OPTIONAL
            },    # OPTIONAL
            AudioType => 'CLEAN_EFFECTS'
            , # values: CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY; OPTIONAL
            CodecSettings => {
              Mp2Settings => {
                SampleRate => 1,                  # OPTIONAL
                Bitrate    => 1,                  # OPTIONAL
                CodingMode => 'CODING_MODE_1_0'
                ,    # values: CODING_MODE_1_0, CODING_MODE_2_0; OPTIONAL
              },    # OPTIONAL
              Ac3Settings => {
                BitstreamMode => 'COMMENTARY'
                , # values: COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER; OPTIONAL
                Bitrate         => 1,               # OPTIONAL
                MetadataControl => 'FOLLOW_INPUT'
                ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                LfeFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                DrcProfile =>
                  'FILM_STANDARD',    # values: FILM_STANDARD, NONE; OPTIONAL
                CodingMode => 'CODING_MODE_1_0'
                , # values: CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE; OPTIONAL
                Dialnorm => 1,    # min: 1, max: 31; OPTIONAL
              },    # OPTIONAL
              Eac3Settings => {
                StereoDownmix =>
                  'DPL2',  # values: DPL2, LO_RO, LT_RT, NOT_INDICATED; OPTIONAL
                PassthroughControl => 'NO_PASSTHROUGH'
                ,          # values: NO_PASSTHROUGH, WHEN_POSSIBLE; OPTIONAL
                BitstreamMode => 'COMMENTARY'
                , # values: COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED; OPTIONAL
                Bitrate => 1,    # OPTIONAL
                PhaseControl =>
                  'NO_SHIFT',    # values: NO_SHIFT, SHIFT_90_DEGREES; OPTIONAL
                LoRoCenterMixLevel => 1,               # OPTIONAL
                MetadataControl    => 'FOLLOW_INPUT'
                ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                DrcRf => 'FILM_LIGHT'
                , # values: FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH; OPTIONAL
                LtRtSurroundMixLevel => 1,             # OPTIONAL
                DrcLine              => 'FILM_LIGHT'
                , # values: FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH; OPTIONAL
                DcFilter => 'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                SurroundMode => 'DISABLED'
                ,    # values: DISABLED, ENABLED, NOT_INDICATED; OPTIONAL
                LfeFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                CodingMode => 'CODING_MODE_1_0'
                , # values: CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2; OPTIONAL
                AttenuationControl =>
                  'ATTENUATE_3_DB',    # values: ATTENUATE_3_DB, NONE; OPTIONAL
                LtRtCenterMixLevel   => 1,       # OPTIONAL
                LoRoSurroundMixLevel => 1,       # OPTIONAL
                LfeControl           => 'LFE',   # values: LFE, NO_LFE; OPTIONAL
                Dialnorm             => 1,       # min: 1, max: 31; OPTIONAL
                SurroundExMode => 'DISABLED'
                ,    # values: DISABLED, ENABLED, NOT_INDICATED; OPTIONAL
              },    # OPTIONAL
              PassThroughSettings => {

              },    # OPTIONAL
              AacSettings => {
                SampleRate      => 1,         # OPTIONAL
                RateControlMode => 'CBR',     # values: CBR, VBR; OPTIONAL
                Bitrate         => 1,         # OPTIONAL
                Spec            => 'MPEG2',   # values: MPEG2, MPEG4; OPTIONAL
                Profile         => 'HEV1',    # values: HEV1, HEV2, LC; OPTIONAL
                InputType => 'BROADCASTER_MIXED_AD'
                ,    # values: BROADCASTER_MIXED_AD, NORMAL; OPTIONAL
                RawFormat => 'LATM_LOAS',    # values: LATM_LOAS, NONE; OPTIONAL
                CodingMode => 'AD_RECEIVER_MIX'
                , # values: AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1; OPTIONAL
                VbrQuality =>
                  'HIGH', # values: HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            AudioTypeControl =>
              'FOLLOW_INPUT',   # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
            LanguageCode => 'My__stringMin3Max3',    # min: 3, max: 3; OPTIONAL
          },
          ...
        ],
        TimecodeConfig => {
          Source => 'EMBEDDED',    # values: EMBEDDED, SYSTEMCLOCK, ZEROBASED
          SyncThreshold => 1,      # min: 1, max: 1000000; OPTIONAL
        },
        CaptionDescriptions => [
          {
            CaptionSelectorName => 'My__string',
            Name                => 'My__string',
            DestinationSettings => {
              Scte20PlusEmbeddedDestinationSettings => {

              },                   # OPTIONAL
              TtmlDestinationSettings => {
                StyleControl =>
                  'PASSTHROUGH', # values: PASSTHROUGH, USE_CONFIGURED; OPTIONAL
              },    # OPTIONAL
              EmbeddedDestinationSettings => {

              },    # OPTIONAL
              WebvttDestinationSettings => {

              },    # OPTIONAL
              TeletextDestinationSettings => {

              },    # OPTIONAL
              AribDestinationSettings => {

              },    # OPTIONAL
              RtmpCaptionInfoDestinationSettings => {

              },    # OPTIONAL
              EmbeddedPlusScte20DestinationSettings => {

              },    # OPTIONAL
              BurnInDestinationSettings => {
                FontSize          => 'My__string',
                BackgroundOpacity => 1,              # max: 255; OPTIONAL
                OutlineSize       => 1,              # max: 10; OPTIONAL
                BackgroundColor =>
                  'BLACK',    # values: BLACK, NONE, WHITE; OPTIONAL
                ShadowYOffset => 1,    # OPTIONAL
                TeletextGridControl =>
                  'FIXED',             # values: FIXED, SCALED; OPTIONAL
                Font => {
                  Uri           => 'My__string',
                  Username      => 'My__string',
                  PasswordParam => 'My__string',
                },                     # OPTIONAL
                ShadowColor  => 'BLACK',  # values: BLACK, NONE, WHITE; OPTIONAL
                YPosition    => 1,        # OPTIONAL
                OutlineColor => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                FontColor => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                FontResolution => 1,    # min: 96, max: 600; OPTIONAL
                ShadowOpacity  => 1,    # max: 255; OPTIONAL
                FontOpacity    => 1,    # max: 255; OPTIONAL
                Alignment =>
                  'CENTERED',    # values: CENTERED, LEFT, SMART; OPTIONAL
                XPosition     => 1,    # OPTIONAL
                ShadowXOffset => 1,    # OPTIONAL
              },    # OPTIONAL
              DvbSubDestinationSettings => {
                FontSize          => 'My__string',
                BackgroundOpacity => 1,              # max: 255; OPTIONAL
                OutlineSize       => 1,              # max: 10; OPTIONAL
                BackgroundColor =>
                  'BLACK',    # values: BLACK, NONE, WHITE; OPTIONAL
                ShadowYOffset => 1,    # OPTIONAL
                TeletextGridControl =>
                  'FIXED',             # values: FIXED, SCALED; OPTIONAL
                Font => {
                  Uri           => 'My__string',
                  Username      => 'My__string',
                  PasswordParam => 'My__string',
                },                     # OPTIONAL
                ShadowColor  => 'BLACK',  # values: BLACK, NONE, WHITE; OPTIONAL
                YPosition    => 1,        # OPTIONAL
                OutlineColor => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                FontColor => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                FontResolution => 1,    # min: 96, max: 600; OPTIONAL
                ShadowOpacity  => 1,    # max: 255; OPTIONAL
                FontOpacity    => 1,    # max: 255; OPTIONAL
                Alignment =>
                  'CENTERED',    # values: CENTERED, LEFT, SMART; OPTIONAL
                XPosition     => 1,    # OPTIONAL
                ShadowXOffset => 1,    # OPTIONAL
              },    # OPTIONAL
              SmpteTtDestinationSettings => {

              },    # OPTIONAL
              Scte27DestinationSettings => {

              },    # OPTIONAL
            },    # OPTIONAL
            LanguageDescription => 'My__string',
            LanguageCode        => 'My__string',
          },
          ...
        ],        # OPTIONAL
        AvailBlanking => {
          State => 'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
          AvailBlankingImage => {
            Uri           => 'My__string',
            Username      => 'My__string',
            PasswordParam => 'My__string',
          },                      # OPTIONAL
        },    # OPTIONAL
        AvailConfiguration => {
          AvailSettings => {
            Scte35SpliceInsert => {
              AdAvailOffset => 1,    # min: -1000, max: 1000; OPTIONAL
              NoRegionalBlackoutFlag =>
                'FOLLOW',            # values: FOLLOW, IGNORE; OPTIONAL
              WebDeliveryAllowedFlag =>
                'FOLLOW',            # values: FOLLOW, IGNORE; OPTIONAL
            },    # OPTIONAL
            Scte35TimeSignalApos => {
              AdAvailOffset => 1,    # min: -1000, max: 1000; OPTIONAL
              NoRegionalBlackoutFlag =>
                'FOLLOW',            # values: FOLLOW, IGNORE; OPTIONAL
              WebDeliveryAllowedFlag =>
                'FOLLOW',            # values: FOLLOW, IGNORE; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        BlackoutSlate => {
          BlackoutSlateImage => {
            Uri           => 'My__string',
            Username      => 'My__string',
            PasswordParam => 'My__string',
          },    # OPTIONAL
          State => 'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
          NetworkEndBlackout =>
            'DISABLED',           # values: DISABLED, ENABLED; OPTIONAL
          NetworkEndBlackoutImage => {
            Uri           => 'My__string',
            Username      => 'My__string',
            PasswordParam => 'My__string',
          },                      # OPTIONAL
          NetworkId => 'My__stringMin34Max34',    # min: 34, max: 34; OPTIONAL
        },    # OPTIONAL
        GlobalConfiguration => {
          InputEndAction =>
            'NONE',    # values: NONE, SWITCH_AND_LOOP_INPUTS; OPTIONAL
          SupportLowFramerateInputs =>
            'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
          InitialAudioGain => 1,    # min: -60, max: 60; OPTIONAL
          OutputTimingSource =>
            'INPUT_CLOCK',    # values: INPUT_CLOCK, SYSTEM_CLOCK; OPTIONAL
          InputLossBehavior => {
            BlackFrameMsec => 1,    # max: 1000000; OPTIONAL
            InputLossImageColor =>
              'My__stringMin6Max6',    # min: 6, max: 6; OPTIONAL
            InputLossImageSlate => {
              Uri           => 'My__string',
              Username      => 'My__string',
              PasswordParam => 'My__string',
            },                         # OPTIONAL
            RepeatFrameMsec    => 1,          # max: 1000000; OPTIONAL
            InputLossImageType => 'COLOR',    # values: COLOR, SLATE; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      InputAttachments => [
        {
          InputSettings => {
            NetworkInputSettings => {
              HlsInputSettings => {
                Bandwidth      => 1,    # OPTIONAL
                Retries        => 1,    # OPTIONAL
                BufferSegments => 1,    # OPTIONAL
                RetryInterval  => 1,    # OPTIONAL
              },    # OPTIONAL
              ServerValidation => 'CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME'
              , # values: CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY; OPTIONAL
            },    # OPTIONAL
            AudioSelectors => [
              {
                Name             => 'My__string',
                SelectorSettings => {
                  AudioPidSelection => {
                    Pid => 1,    # max: 8191; OPTIONAL

                  },    # OPTIONAL
                  AudioLanguageSelection => {
                    LanguageCode => 'My__string',
                    LanguageSelectionPolicy =>
                      'LOOSE',    # values: LOOSE, STRICT; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],        # OPTIONAL
            CaptionSelectors => [
              {
                Name             => 'My__string',
                SelectorSettings => {
                  TeletextSourceSettings => { PageNumber => 'My__string', }
                  ,    # OPTIONAL
                  AribSourceSettings => {

                  },    # OPTIONAL
                  Scte20SourceSettings => {
                    Source608ChannelNumber => 1,    # min: 1, max: 4
                    Convert608To708 =>
                      'DISABLED',    # values: DISABLED, UPCONVERT; OPTIONAL
                  },    # OPTIONAL
                  EmbeddedSourceSettings => {
                    Source608ChannelNumber => 1,    # min: 1, max: 4
                    Scte20Detection => 'AUTO',    # values: AUTO, OFF; OPTIONAL
                    Source608TrackNumber => 1,    # min: 1, max: 5; OPTIONAL
                    Convert608To708 =>
                      'DISABLED',    # values: DISABLED, UPCONVERT; OPTIONAL
                  },    # OPTIONAL
                  Scte27SourceSettings => {
                    Pid => 1,    # min: 1, ; OPTIONAL
                  },    # OPTIONAL
                  DvbSubSourceSettings => {
                    Pid => 1,    # min: 1, ; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                LanguageCode => 'My__string',
              },
              ...
            ],        # OPTIONAL
            InputFilter => 'AUTO',    # values: AUTO, DISABLED, FORCED; OPTIONAL
            DeblockFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
            SourceEndBehavior => 'CONTINUE',  # values: CONTINUE, LOOP; OPTIONAL
            FilterStrength    => 1,           # min: 1, max: 5; OPTIONAL
            VideoSelector     => {
              SelectorSettings => {
                VideoSelectorPid => {
                  Pid => 1,                   # max: 8191; OPTIONAL
                },    # OPTIONAL
                VideoSelectorProgramId => {
                  ProgramId => 1,    # max: 65536
                },    # OPTIONAL
              },    # OPTIONAL
              ColorSpaceUsage => 'FALLBACK', # values: FALLBACK, FORCE; OPTIONAL
              ColorSpace =>
                'FOLLOW',    # values: FOLLOW, REC_601, REC_709; OPTIONAL
            },    # OPTIONAL
            DenoiseFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
          },    # OPTIONAL
          InputId => 'My__string',
        },
        ...
      ],        # OPTIONAL
      InputSpecification => {
        Codec          => 'MPEG2',        # values: MPEG2, AVC, HEVC; OPTIONAL
        Resolution     => 'SD',           # values: SD, HD, UHD; OPTIONAL
        MaximumBitrate => 'MAX_10_MBPS'
        ,    # values: MAX_10_MBPS, MAX_20_MBPS, MAX_50_MBPS; OPTIONAL
      },    # OPTIONAL
      LogLevel => 'ERROR',         # OPTIONAL
      Name     => 'My__string',    # OPTIONAL
      RoleArn  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Channel = $UpdateChannelResponse->Channel;

    # Returns a L<Paws::MediaLive::UpdateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/UpdateChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelId => Str

channel ID



=head2 Destinations => ArrayRef[L<Paws::MediaLive::OutputDestination>]

A list of output destinations for this channel.



=head2 EncoderSettings => L<Paws::MediaLive::EncoderSettings>

The encoder settings for this channel.



=head2 InputAttachments => ArrayRef[L<Paws::MediaLive::InputAttachment>]





=head2 InputSpecification => L<Paws::MediaLive::InputSpecification>

Specification of input for this channel (max. bitrate, resolution,
codec, etc.)



=head2 LogLevel => Str

The log level to write to CloudWatch Logs.

Valid values are: C<"ERROR">, C<"WARNING">, C<"INFO">, C<"DEBUG">, C<"DISABLED">

=head2 Name => Str

The name of the channel.



=head2 RoleArn => Str

An optional Amazon Resource Name (ARN) of the role to assume when
running the Channel. If you do not specify this on an update call but
the role was previously set that role will be removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChannel in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

