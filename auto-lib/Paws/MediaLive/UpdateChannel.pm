
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
          Settings => [
            {
              StreamName    => 'My__string',
              Username      => 'My__string',
              PasswordParam => 'My__string',
              Url           => 'My__string',
            },
            ...
          ],    # OPTIONAL
          Id => 'My__string',
        },
        ...
      ],        # OPTIONAL
      EncoderSettings => {
        VideoDescriptions => [
          {
            Name => 'My__string',
            ScalingBehavior =>
              'DEFAULT',    # values: DEFAULT, STRETCH_TO_OUTPUT; OPTIONAL
            Height        => 1,    # OPTIONAL
            CodecSettings => {
              H264Settings => {
                MinIInterval => 1,    # max: 30; OPTIONAL
                NumRefFrames => 1,    # min: 1, max: 6; OPTIONAL
                ParControl => 'INITIALIZE_FROM_SOURCE'
                ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                EntropyEncoding    => 'CABAC',  # values: CABAC, CAVLC; OPTIONAL
                FramerateNumerator => 1,        # OPTIONAL
                Syntax        => 'DEFAULT',  # values: DEFAULT, RP2027; OPTIONAL
                Bitrate       => 1,          # min: 1000, ; OPTIONAL
                GopNumBFrames => 1,          # max: 7; OPTIONAL
                GopClosedCadence => 1,       # OPTIONAL
                TimecodeInsertion =>
                  'DISABLED',    # values: DISABLED, PIC_TIMING_SEI; OPTIONAL
                GopSize => 1,    # OPTIONAL
                ScanType =>
                  'INTERLACED',    # values: INTERLACED, PROGRESSIVE; OPTIONAL
                Softness        => 1,           # max: 128; OPTIONAL
                RateControlMode => 'CBR',       # values: CBR, VBR; OPTIONAL
                Profile         => 'BASELINE'
                , # values: BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN; OPTIONAL
                AfdSignaling => 'AUTO',    # values: AUTO, FIXED, NONE; OPTIONAL
                GopSizeUnits => 'FRAMES',  # values: FRAMES, SECONDS; OPTIONAL
                FlickerAq => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                SceneChangeDetect =>
                  'DISABLED',              # values: DISABLED, ENABLED; OPTIONAL
                MaxBitrate => 1,               # min: 1000, ; OPTIONAL
                Level      => 'H264_LEVEL_1'
                , # values: H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO; OPTIONAL
                FramerateDenominator => 1,    # OPTIONAL
                LookAheadRateControl =>
                  'HIGH',    # values: HIGH, LOW, MEDIUM; OPTIONAL
                GopBReference =>
                  'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                BufFillPct       => 1,                      # max: 100; OPTIONAL
                ParDenominator   => 1,                      # min: 1, ; OPTIONAL
                FramerateControl => 'INITIALIZE_FROM_SOURCE'
                ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                Slices        => 1,           # min: 1, max: 32; OPTIONAL
                BufSize       => 1,           # OPTIONAL
                ColorMetadata => 'IGNORE',    # values: IGNORE, INSERT; OPTIONAL
                SpatialAq => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                AdaptiveQuantization => 'HIGH'
                ,    # values: HIGH, HIGHER, LOW, MAX, MEDIUM, OFF; OPTIONAL
                FixedAfd => 'AFD_0000'
                , # values: AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111; OPTIONAL
                ParNumerator => 1,    # OPTIONAL
                TemporalAq => 'DISABLED',  # values: DISABLED, ENABLED; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            RespondToAfd =>
              'NONE',    # values: NONE, PASSTHROUGH, RESPOND; OPTIONAL
            Width     => 1,    # OPTIONAL
            Sharpness => 1,    # max: 100; OPTIONAL
          },
          ...
        ],
        AudioDescriptions => [
          {
            Name                       => 'My__string',
            AudioSelectorName          => 'My__string',
            StreamName                 => 'My__string',
            AudioNormalizationSettings => {
              AlgorithmControl =>
                'CORRECT_AUDIO',    # values: CORRECT_AUDIO; OPTIONAL
              Algorithm =>
                'ITU_1770_1',       # values: ITU_1770_1, ITU_1770_2; OPTIONAL
              TargetLkfs => 1,      # OPTIONAL
            },    # OPTIONAL
            LanguageCodeControl =>
              'FOLLOW_INPUT',   # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
            AudioType => 'CLEAN_EFFECTS'
            , # values: CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY; OPTIONAL
            AudioTypeControl =>
              'FOLLOW_INPUT',   # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
            LanguageCode  => 'My__stringMin3Max3',    # min: 3, max: 3; OPTIONAL
            RemixSettings => {
              ChannelMappings => [
                {
                  OutputChannel      => 1,            # max: 7; OPTIONAL
                  InputChannelLevels => [
                    {
                      Gain         => 1,              # min: -60, max: 6
                      InputChannel => 1,              # max: 15

                    },
                    ...
                  ],

                },
                ...
              ],
              ChannelsIn  => 1,    # min: 1, max: 16; OPTIONAL
              ChannelsOut => 1,    # min: 1, max: 8; OPTIONAL
            },    # OPTIONAL
            CodecSettings => {
              Eac3Settings => {
                LtRtCenterMixLevel => 1,             # OPTIONAL
                DrcRf              => 'FILM_LIGHT'
                , # values: FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH; OPTIONAL
                Dialnorm           => 1,             # min: 1, max: 31; OPTIONAL
                LoRoCenterMixLevel => 1,             # OPTIONAL
                MetadataControl    => 'FOLLOW_INPUT'
                ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                LtRtSurroundMixLevel => 1,             # OPTIONAL
                BitstreamMode        => 'COMMENTARY'
                , # values: COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED; OPTIONAL
                Bitrate  => 1,             # OPTIONAL
                DcFilter => 'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                CodingMode => 'CODING_MODE_1_0'
                , # values: CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2; OPTIONAL
                LfeControl => 'LFE',         # values: LFE, NO_LFE; OPTIONAL
                DrcLine    => 'FILM_LIGHT'
                , # values: FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH; OPTIONAL
                SurroundMode => 'DISABLED'
                ,    # values: DISABLED, ENABLED, NOT_INDICATED; OPTIONAL
                LoRoSurroundMixLevel => 1,                 # OPTIONAL
                PassthroughControl   => 'NO_PASSTHROUGH'
                ,    # values: NO_PASSTHROUGH, WHEN_POSSIBLE; OPTIONAL
                StereoDownmix =>
                  'DPL2',  # values: DPL2, LO_RO, LT_RT, NOT_INDICATED; OPTIONAL
                PhaseControl =>
                  'NO_SHIFT',    # values: NO_SHIFT, SHIFT_90_DEGREES; OPTIONAL
                AttenuationControl =>
                  'ATTENUATE_3_DB',    # values: ATTENUATE_3_DB, NONE; OPTIONAL
                LfeFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                SurroundExMode => 'DISABLED'
                ,    # values: DISABLED, ENABLED, NOT_INDICATED; OPTIONAL
              },    # OPTIONAL
              AacSettings => {
                InputType => 'BROADCASTER_MIXED_AD'
                ,    # values: BROADCASTER_MIXED_AD, NORMAL; OPTIONAL
                RawFormat => 'LATM_LOAS',    # values: LATM_LOAS, NONE; OPTIONAL
                VbrQuality =>
                  'HIGH', # values: HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW; OPTIONAL
                Profile         => 'HEV1',    # values: HEV1, HEV2, LC; OPTIONAL
                RateControlMode => 'CBR',     # values: CBR, VBR; OPTIONAL
                CodingMode => 'AD_RECEIVER_MIX'
                , # values: AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1; OPTIONAL
                Bitrate    => 1,          # OPTIONAL
                SampleRate => 1,          # OPTIONAL
                Spec       => 'MPEG2',    # values: MPEG2, MPEG4; OPTIONAL
              },    # OPTIONAL
              PassThroughSettings => {

              },    # OPTIONAL
              Mp2Settings => {
                CodingMode => 'CODING_MODE_1_0'
                ,    # values: CODING_MODE_1_0, CODING_MODE_2_0; OPTIONAL
                Bitrate    => 1,    # OPTIONAL
                SampleRate => 1,    # OPTIONAL
              },    # OPTIONAL
              Ac3Settings => {
                Dialnorm        => 1,               # min: 1, max: 31; OPTIONAL
                MetadataControl => 'FOLLOW_INPUT'
                ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                Bitrate       => 1,             # OPTIONAL
                BitstreamMode => 'COMMENTARY'
                , # values: COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER; OPTIONAL
                CodingMode => 'CODING_MODE_1_0'
                , # values: CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE; OPTIONAL
                LfeFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                DrcProfile =>
                  'FILM_STANDARD',    # values: FILM_STANDARD, NONE; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],
        OutputGroups => [
          {
            Outputs => [
              {
                OutputSettings => {
                  MsSmoothOutputSettings => { NameModifier => 'My__string', }
                  ,    # OPTIONAL
                  ArchiveOutputSettings => {
                    ContainerSettings => {
                      M2tsSettings => {
                        NullPacketBitrate => 1,              # OPTIONAL
                        KlvDataPids       => 'My__string',
                        DvbNitSettings    => {
                          NetworkId => 1,                    # max: 65536
                          NetworkName =>
                            'My__stringMin1Max256',          # min: 1, max: 256
                          RepInterval => 1,    # min: 25, max: 10000; OPTIONAL
                        },    # OPTIONAL
                        PcrPid => 'My__string',
                        Klv => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        AbsentInputAudioBehavior =>
                          'DROP',    # values: DROP, ENCODE_SILENCE; OPTIONAL
                        VideoPid          => 'My__string',
                        DvbTeletextPid    => 'My__string',
                        FragmentTime      => 1,              # OPTIONAL
                        AudioFramesPerPes => 1,              # OPTIONAL
                        AudioStreamType => 'ATSC', # values: ATSC, DVB; OPTIONAL
                        SegmentationStyle => 'MAINTAIN_CADENCE'
                        ,    # values: MAINTAIN_CADENCE, RESET_CADENCE; OPTIONAL
                        EbpLookaheadMs => 1,    # max: 10000; OPTIONAL
                        PcrPeriod      => 1,    # max: 500; OPTIONAL
                        Bitrate        => 1,    # OPTIONAL
                        Arib =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        DvbSdtSettings => {
                          RepInterval => 1,    # min: 25, max: 2000; OPTIONAL
                          ServiceName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                          ServiceProviderName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                          OutputSdt => 'SDT_FOLLOW'
                          , # values: SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE; OPTIONAL
                        },    # OPTIONAL
                        SegmentationMarkers => 'EBP'
                        , # values: EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART; OPTIONAL
                        DvbSubPids       => 'My__string',
                        SegmentationTime => 1,              # OPTIONAL
                        EtvSignalPid     => 'My__string',
                        AribCaptionsPid  => 'My__string',
                        AudioPids        => 'My__string',
                        EsRateInPes =>
                          'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                        TimedMetadataPid => 'My__string',
                        ProgramNum       => 1,            # max: 65535; OPTIONAL
                        AudioBufferModel =>
                          'ATSC',    # values: ATSC, DVB; OPTIONAL
                        PmtPid         => 'My__string',
                        EtvPlatformPid => 'My__string',
                        EbpPlacement   => 'VIDEO_AND_AUDIO_PIDS'
                        ,    # values: VIDEO_AND_AUDIO_PIDS, VIDEO_PID; OPTIONAL
                        PmtInterval       => 1,    # max: 1000; OPTIONAL
                        TransportStreamId => 1,    # max: 65535; OPTIONAL
                        BufferModel =>
                          'MULTIPLEX',    # values: MULTIPLEX, NONE; OPTIONAL
                        Ebif => 'NONE',   # values: NONE, PASSTHROUGH; OPTIONAL
                        AribCaptionsPidControl =>
                          'AUTO',    # values: AUTO, USE_CONFIGURED; OPTIONAL
                        EcmPid                => 'My__string',
                        TimedMetadataBehavior => 'NO_PASSTHROUGH'
                        ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                        CcDescriptor =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        EbpAudioInterval => 'VIDEO_AND_FIXED_INTERVALS'
                        , # values: VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL; OPTIONAL
                        RateMode => 'CBR',    # values: CBR, VBR; OPTIONAL
                        Scte35Control =>
                          'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        PcrControl => 'CONFIGURED_PCR_PERIOD'
                        , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                        Scte27Pids     => 'My__string',
                        Scte35Pid      => 'My__string',
                        PatInterval    => 1,              # max: 1000; OPTIONAL
                        DvbTdtSettings => {
                          RepInterval => 1,    # min: 1000, max: 30000; OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                    },
                    NameModifier => 'My__string',
                    Extension    => 'My__string',
                  },    # OPTIONAL
                  RtmpOutputSettings => {
                    Destination => { DestinationRefId => 'My__string', },
                    ConnectionRetryInterval => 1,           # min: 1, ; OPTIONAL
                    NumRetries              => 1,           # OPTIONAL
                    CertificateMode         => 'SELF_SIGNED'
                    ,    # values: SELF_SIGNED, VERIFY_AUTHENTICITY; OPTIONAL
                  },    # OPTIONAL
                  UdpOutputSettings => {
                    ContainerSettings => {
                      M2tsSettings => {
                        NullPacketBitrate => 1,              # OPTIONAL
                        KlvDataPids       => 'My__string',
                        DvbNitSettings    => {
                          NetworkId => 1,                    # max: 65536
                          NetworkName =>
                            'My__stringMin1Max256',          # min: 1, max: 256
                          RepInterval => 1,    # min: 25, max: 10000; OPTIONAL
                        },    # OPTIONAL
                        PcrPid => 'My__string',
                        Klv => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        AbsentInputAudioBehavior =>
                          'DROP',    # values: DROP, ENCODE_SILENCE; OPTIONAL
                        VideoPid          => 'My__string',
                        DvbTeletextPid    => 'My__string',
                        FragmentTime      => 1,              # OPTIONAL
                        AudioFramesPerPes => 1,              # OPTIONAL
                        AudioStreamType => 'ATSC', # values: ATSC, DVB; OPTIONAL
                        SegmentationStyle => 'MAINTAIN_CADENCE'
                        ,    # values: MAINTAIN_CADENCE, RESET_CADENCE; OPTIONAL
                        EbpLookaheadMs => 1,    # max: 10000; OPTIONAL
                        PcrPeriod      => 1,    # max: 500; OPTIONAL
                        Bitrate        => 1,    # OPTIONAL
                        Arib =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        DvbSdtSettings => {
                          RepInterval => 1,    # min: 25, max: 2000; OPTIONAL
                          ServiceName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                          ServiceProviderName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                          OutputSdt => 'SDT_FOLLOW'
                          , # values: SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE; OPTIONAL
                        },    # OPTIONAL
                        SegmentationMarkers => 'EBP'
                        , # values: EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART; OPTIONAL
                        DvbSubPids       => 'My__string',
                        SegmentationTime => 1,              # OPTIONAL
                        EtvSignalPid     => 'My__string',
                        AribCaptionsPid  => 'My__string',
                        AudioPids        => 'My__string',
                        EsRateInPes =>
                          'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                        TimedMetadataPid => 'My__string',
                        ProgramNum       => 1,            # max: 65535; OPTIONAL
                        AudioBufferModel =>
                          'ATSC',    # values: ATSC, DVB; OPTIONAL
                        PmtPid         => 'My__string',
                        EtvPlatformPid => 'My__string',
                        EbpPlacement   => 'VIDEO_AND_AUDIO_PIDS'
                        ,    # values: VIDEO_AND_AUDIO_PIDS, VIDEO_PID; OPTIONAL
                        PmtInterval       => 1,    # max: 1000; OPTIONAL
                        TransportStreamId => 1,    # max: 65535; OPTIONAL
                        BufferModel =>
                          'MULTIPLEX',    # values: MULTIPLEX, NONE; OPTIONAL
                        Ebif => 'NONE',   # values: NONE, PASSTHROUGH; OPTIONAL
                        AribCaptionsPidControl =>
                          'AUTO',    # values: AUTO, USE_CONFIGURED; OPTIONAL
                        EcmPid                => 'My__string',
                        TimedMetadataBehavior => 'NO_PASSTHROUGH'
                        ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                        CcDescriptor =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        EbpAudioInterval => 'VIDEO_AND_FIXED_INTERVALS'
                        , # values: VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL; OPTIONAL
                        RateMode => 'CBR',    # values: CBR, VBR; OPTIONAL
                        Scte35Control =>
                          'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        PcrControl => 'CONFIGURED_PCR_PERIOD'
                        , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                        Scte27Pids     => 'My__string',
                        Scte35Pid      => 'My__string',
                        PatInterval    => 1,              # max: 1000; OPTIONAL
                        DvbTdtSettings => {
                          RepInterval => 1,    # min: 1000, max: 30000; OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                    },
                    Destination       => { DestinationRefId => 'My__string', },
                    FecOutputSettings => {
                      RowLength => 1,    # min: 1, max: 20; OPTIONAL
                      IncludeFec =>
                        'COLUMN',    # values: COLUMN, COLUMN_AND_ROW; OPTIONAL
                      ColumnDepth => 1,    # min: 4, max: 20; OPTIONAL
                    },    # OPTIONAL
                    BufferMsec => 1,    # max: 10000; OPTIONAL
                  },    # OPTIONAL
                  HlsOutputSettings => {
                    HlsSettings => {
                      AudioOnlyHlsSettings => {
                        AudioOnlyImage => {
                          Uri           => 'My__string',
                          PasswordParam => 'My__string',
                          Username      => 'My__string',
                        },    # OPTIONAL
                        AudioGroupId   => 'My__string',
                        AudioTrackType => 'ALTERNATE_AUDIO_AUTO_SELECT'
                        , # values: ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM; OPTIONAL
                      },    # OPTIONAL
                      StandardHlsSettings => {
                        M3u8Settings => {
                          PcrPid            => 'My__string',
                          VideoPid          => 'My__string',
                          AudioFramesPerPes => 1,           # OPTIONAL
                          PcrPeriod         => 1,           # max: 500; OPTIONAL
                          ProgramNum => 1,              # max: 65535; OPTIONAL
                          AudioPids  => 'My__string',
                          TimedMetadataPid => 'My__string',
                          TransportStreamId => 1,       # max: 65535; OPTIONAL
                          PmtPid      => 'My__string',
                          PmtInterval => 1,              # max: 1000; OPTIONAL
                          EcmPid      => 'My__string',
                          Scte35Behavior => 'NO_PASSTHROUGH'
                          ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                          TimedMetadataBehavior => 'NO_PASSTHROUGH'
                          ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                          PcrControl => 'CONFIGURED_PCR_PERIOD'
                          , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                          Scte35Pid   => 'My__string',
                          PatInterval => 1,              # max: 1000; OPTIONAL
                        },
                        AudioRenditionSets => 'My__string',
                      },    # OPTIONAL
                    },
                    NameModifier    => 'My__stringMin1',    # min: 1, ; OPTIONAL
                    SegmentModifier => 'My__string',
                  },    # OPTIONAL
                },
                OutputName =>
                  'My__stringMin1Max255',    # min: 1, max: 255; OPTIONAL
                VideoDescriptionName    => 'My__string',
                CaptionDescriptionNames => [ 'My__string', ... ],    # OPTIONAL
                AudioDescriptionNames   => [ 'My__string', ... ],    # OPTIONAL
              },
              ...
            ],
            OutputGroupSettings => {
              UdpGroupSettings => {
                TimedMetadataId3Period => 1,                         # OPTIONAL
                InputLossAction        => 'DROP_PROGRAM'
                ,    # values: DROP_PROGRAM, DROP_TS, EMIT_PROGRAM; OPTIONAL
                TimedMetadataId3Frame =>
                  'NONE',    # values: NONE, PRIV, TDRL; OPTIONAL
              },    # OPTIONAL
              HlsGroupSettings => {
                Destination => { DestinationRefId => 'My__string', },
                SegmentsPerSubdirectory => 1,              # min: 1, ; OPTIONAL
                BaseUrlManifest         => 'My__string',
                OutputSelection => 'MANIFESTS_AND_SEGMENTS'
                ,    # values: MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY; OPTIONAL
                ConstantIv => 'My__stringMin32Max32',    # min: 32, max: 32
                TimestampDeltaMilliseconds => 1,              # OPTIONAL
                BaseUrlContent             => 'My__string',
                TimedMetadataId3Period     => 1,              # OPTIONAL
                CaptionLanguageMappings    => [
                  {
                    LanguageDescription =>
                      'My__stringMin1',    # min: 1, ; OPTIONAL
                    CaptionChannel => 1,   # min: 1, max: 4
                    LanguageCode =>
                      'My__stringMin3Max3',    # min: 3, max: 3; OPTIONAL

                  },
                  ...
                ],                             # OPTIONAL
                StreamInfResolution =>
                  'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                Mode => 'LIVE', # values: LIVE, VOD; OPTIONAL
                CaptionLanguageSetting =>
                  'INSERT',     # values: INSERT, NONE, OMIT; OPTIONAL
                MinSegmentLength => 1,           # OPTIONAL
                IvSource         => 'EXPLICIT'
                ,    # values: EXPLICIT, FOLLOWS_SEGMENT_NUMBER; OPTIONAL
                KeyFormatVersions => 'My__string',
                CodecSpecification =>
                  'RFC_4281',    # values: RFC_4281, RFC_6381; OPTIONAL
                ProgramDateTimePeriod => 1,    # max: 3600; OPTIONAL
                SegmentLength         => 1,    # min: 1, ; OPTIONAL
                AdMarkers             => [
                  'ADOBE', ...    # values: ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
                ],                # OPTIONAL
                EncryptionType =>
                  'AES128',       # values: AES128, SAMPLE_AES; OPTIONAL
                SegmentationMode => 'USE_INPUT_SEGMENTATION'
                , # values: USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION; OPTIONAL
                TimedMetadataId3Frame =>
                  'NONE',    # values: NONE, PRIV, TDRL; OPTIONAL
                HlsCdnSettings => {
                  HlsBasicPutSettings => {
                    FilecacheDuration       => 1,    # max: 600; OPTIONAL
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    NumRetries              => 1,    # OPTIONAL
                    RestartDelay            => 1,    # max: 15
                  },    # OPTIONAL
                  HlsAkamaiSettings => {
                    HttpTransferMode =>
                      'CHUNKED',    # values: CHUNKED, NON_CHUNKED; OPTIONAL
                    FilecacheDuration       => 1,           # max: 600; OPTIONAL
                    ConnectionRetryInterval => 1,           # OPTIONAL
                    NumRetries              => 1,           # OPTIONAL
                    Salt                    => 'My__string',
                    RestartDelay            => 1,           # max: 15
                    Token                   => 'My__string',
                  },    # OPTIONAL
                  HlsMediaStoreSettings => {
                    FilecacheDuration       => 1,    # max: 600; OPTIONAL
                    NumRetries              => 1,    # OPTIONAL
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    MediaStoreStorageClass =>
                      'TEMPORAL',    # values: TEMPORAL; OPTIONAL
                    RestartDelay => 1,    # max: 15
                  },    # OPTIONAL
                  HlsWebdavSettings => {
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    NumRetries              => 1,    # OPTIONAL
                    HttpTransferMode =>
                      'CHUNKED',    # values: CHUNKED, NON_CHUNKED; OPTIONAL
                    FilecacheDuration => 1,    # max: 600; OPTIONAL
                    RestartDelay      => 1,    # max: 15
                  },    # OPTIONAL
                },    # OPTIONAL
                ManifestCompression => 'GZIP',    # values: GZIP, NONE; OPTIONAL
                KeepSegments        => 1,         # min: 1, ; OPTIONAL
                ManifestDurationFormat =>
                  'FLOATING_POINT',  # values: FLOATING_POINT, INTEGER; OPTIONAL
                DirectoryStructure => 'SINGLE_DIRECTORY'
                ,  # values: SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM; OPTIONAL
                IndexNSegments => 1,    # min: 3, ; OPTIONAL
                IvInManifest => 'EXCLUDE',  # values: EXCLUDE, INCLUDE; OPTIONAL
                ClientCache => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                InputLossAction =>
                  'EMIT_OUTPUT',   # values: EMIT_OUTPUT, PAUSE_OUTPUT; OPTIONAL
                TsFileMode => 'SEGMENTED_FILES'
                ,    # values: SEGMENTED_FILES, SINGLE_FILE; OPTIONAL
                KeyProviderSettings => {
                  StaticKeySettings => {
                    StaticKeyValue => 'My__stringMin32Max32', # min: 32, max: 32
                    KeyProviderServer => {
                      Uri           => 'My__string',
                      PasswordParam => 'My__string',
                      Username      => 'My__string',
                    },                                        # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                ProgramDateTime =>
                  'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                KeyFormat => 'My__string',
              },    # OPTIONAL
              MsSmoothGroupSettings => {
                Destination => { DestinationRefId => 'My__string', },
                SparseTrackType => 'NONE',    # values: NONE, SCTE_35; OPTIONAL
                EventId                 => 'My__string',
                FilecacheDuration       => 1,             # OPTIONAL
                SendDelayMs             => 1,             # max: 10000; OPTIONAL
                FragmentLength          => 1,             # min: 1, ; OPTIONAL
                ConnectionRetryInterval => 1,             # OPTIONAL
                AcquisitionPointId      => 'My__string',
                NumRetries              => 1,             # OPTIONAL
                CertificateMode         => 'SELF_SIGNED'
                ,    # values: SELF_SIGNED, VERIFY_AUTHENTICITY; OPTIONAL
                StreamManifestBehavior =>
                  'DO_NOT_SEND',    # values: DO_NOT_SEND, SEND; OPTIONAL
                EventIdMode => 'NO_EVENT_ID'
                , # values: NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP; OPTIONAL
                TimestampOffset          => 'My__string',
                AudioOnlyTimecodeControl => 'PASSTHROUGH'
                ,    # values: PASSTHROUGH, USE_CONFIGURED_CLOCK; OPTIONAL
                TimestampOffsetMode => 'USE_CONFIGURED_OFFSET'
                , # values: USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE; OPTIONAL
                SegmentationMode => 'USE_INPUT_SEGMENTATION'
                , # values: USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION; OPTIONAL
                EventStopBehavior => 'NONE',  # values: NONE, SEND_EOS; OPTIONAL
                RestartDelay      => 1,       # OPTIONAL
                InputLossAction =>
                  'EMIT_OUTPUT',   # values: EMIT_OUTPUT, PAUSE_OUTPUT; OPTIONAL
              },    # OPTIONAL
              RtmpGroupSettings => {
                CacheLength  => 1,    # min: 30, ; OPTIONAL
                RestartDelay => 1,    # OPTIONAL
                CacheFullBehavior => 'DISCONNECT_IMMEDIATELY'
                ,    # values: DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER; OPTIONAL
                CaptionData => 'ALL'
                ,    # values: ALL, FIELD1_608, FIELD1_AND_FIELD2_608; OPTIONAL
                AuthenticationScheme =>
                  'AKAMAI',    # values: AKAMAI, COMMON; OPTIONAL
              },    # OPTIONAL
              ArchiveGroupSettings => {
                Destination => { DestinationRefId => 'My__string', },
                RolloverInterval => 1,    # min: 1, ; OPTIONAL
              },    # OPTIONAL
            },
            Name => 'My__stringMax32',    # max: 32; OPTIONAL
          },
          ...
        ],
        TimecodeConfig => {
          Source => 'EMBEDDED',    # values: EMBEDDED, SYSTEMCLOCK, ZEROBASED
          SyncThreshold => 1,      # min: 1, max: 1000000; OPTIONAL
        },
        BlackoutSlate => {
          NetworkEndBlackoutImage => {
            Uri           => 'My__string',
            PasswordParam => 'My__string',
            Username      => 'My__string',
          },                       # OPTIONAL
          NetworkEndBlackout =>
            'DISABLED',            # values: DISABLED, ENABLED; OPTIONAL
          State => 'DISABLED',     # values: DISABLED, ENABLED; OPTIONAL
          BlackoutSlateImage => {
            Uri           => 'My__string',
            PasswordParam => 'My__string',
            Username      => 'My__string',
          },                       # OPTIONAL
          NetworkId => 'My__stringMin34Max34',    # min: 34, max: 34; OPTIONAL
        },    # OPTIONAL
        AvailConfiguration => {
          AvailSettings => {
            Scte35TimeSignalApos => {
              NoRegionalBlackoutFlag =>
                'FOLLOW',    # values: FOLLOW, IGNORE; OPTIONAL
              AdAvailOffset => 1,    # min: -1000, max: 1000; OPTIONAL
              WebDeliveryAllowedFlag =>
                'FOLLOW',            # values: FOLLOW, IGNORE; OPTIONAL
            },    # OPTIONAL
            Scte35SpliceInsert => {
              AdAvailOffset => 1,    # min: -1000, max: 1000; OPTIONAL
              NoRegionalBlackoutFlag =>
                'FOLLOW',            # values: FOLLOW, IGNORE; OPTIONAL
              WebDeliveryAllowedFlag =>
                'FOLLOW',            # values: FOLLOW, IGNORE; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        AvailBlanking => {
          State => 'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
          AvailBlankingImage => {
            Uri           => 'My__string',
            PasswordParam => 'My__string',
            Username      => 'My__string',
          },                      # OPTIONAL
        },    # OPTIONAL
        GlobalConfiguration => {
          InitialAudioGain => 1,    # min: -60, max: 60; OPTIONAL
          SupportLowFramerateInputs =>
            'DISABLED',             # values: DISABLED, ENABLED; OPTIONAL
          InputEndAction =>
            'NONE',    # values: NONE, SWITCH_AND_LOOP_INPUTS; OPTIONAL
          InputLossBehavior => {
            BlackFrameMsec  => 1,    # max: 1000000; OPTIONAL
            RepeatFrameMsec => 1,    # max: 1000000; OPTIONAL
            InputLossImageColor =>
              'My__stringMin6Max6',    # min: 6, max: 6; OPTIONAL
            InputLossImageType  => 'COLOR',    # values: COLOR, SLATE; OPTIONAL
            InputLossImageSlate => {
              Uri           => 'My__string',
              PasswordParam => 'My__string',
              Username      => 'My__string',
            },                                 # OPTIONAL
          },    # OPTIONAL
          OutputTimingSource =>
            'INPUT_CLOCK',    # values: INPUT_CLOCK, SYSTEM_CLOCK; OPTIONAL
        },    # OPTIONAL
        CaptionDescriptions => [
          {
            Name                => 'My__string',
            CaptionSelectorName => 'My__string',
            LanguageCode        => 'My__string',
            DestinationSettings => {
              TeletextDestinationSettings => {

              },    # OPTIONAL
              BurnInDestinationSettings => {
                BackgroundColor =>
                  'BLACK',    # values: BLACK, NONE, WHITE; OPTIONAL
                YPosition     => 1,        # OPTIONAL
                ShadowOpacity => 1,        # max: 255; OPTIONAL
                OutlineColor  => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                FontSize      => 'My__string',
                ShadowXOffset => 1,              # OPTIONAL
                FontColor     => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                XPosition => 1,    # OPTIONAL
                TeletextGridControl =>
                  'FIXED',         # values: FIXED, SCALED; OPTIONAL
                Font => {
                  Uri           => 'My__string',
                  PasswordParam => 'My__string',
                  Username      => 'My__string',
                },                 # OPTIONAL
                FontOpacity   => 1,       # max: 255; OPTIONAL
                ShadowYOffset => 1,       # OPTIONAL
                ShadowColor   => 'BLACK', # values: BLACK, NONE, WHITE; OPTIONAL
                FontResolution    => 1,   # min: 96, max: 600; OPTIONAL
                BackgroundOpacity => 1,   # max: 255; OPTIONAL
                OutlineSize       => 1,   # max: 10; OPTIONAL
                Alignment =>
                  'CENTERED',    # values: CENTERED, LEFT, SMART; OPTIONAL
              },    # OPTIONAL
              EmbeddedDestinationSettings => {

              },    # OPTIONAL
              WebvttDestinationSettings => {

              },    # OPTIONAL
              EmbeddedPlusScte20DestinationSettings => {

              },    # OPTIONAL
              TtmlDestinationSettings => {
                StyleControl =>
                  'PASSTHROUGH', # values: PASSTHROUGH, USE_CONFIGURED; OPTIONAL
              },    # OPTIONAL
              DvbSubDestinationSettings => {
                FontOpacity   => 1,       # max: 255; OPTIONAL
                ShadowYOffset => 1,       # OPTIONAL
                ShadowColor   => 'BLACK', # values: BLACK, NONE, WHITE; OPTIONAL
                FontResolution    => 1,   # min: 96, max: 600; OPTIONAL
                BackgroundOpacity => 1,   # max: 255; OPTIONAL
                OutlineSize       => 1,   # max: 10; OPTIONAL
                Alignment =>
                  'CENTERED',    # values: CENTERED, LEFT, SMART; OPTIONAL
                BackgroundColor =>
                  'BLACK',       # values: BLACK, NONE, WHITE; OPTIONAL
                YPosition     => 1,              # OPTIONAL
                ShadowOpacity => 1,              # max: 255; OPTIONAL
                FontSize      => 'My__string',
                OutlineColor  => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                ShadowXOffset => 1,        # OPTIONAL
                FontColor     => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                XPosition => 1,    # OPTIONAL
                TeletextGridControl =>
                  'FIXED',         # values: FIXED, SCALED; OPTIONAL
                Font => {
                  Uri           => 'My__string',
                  PasswordParam => 'My__string',
                  Username      => 'My__string',
                },                 # OPTIONAL
              },    # OPTIONAL
              AribDestinationSettings => {

              },    # OPTIONAL
              SmpteTtDestinationSettings => {

              },    # OPTIONAL
              Scte20PlusEmbeddedDestinationSettings => {

              },    # OPTIONAL
              RtmpCaptionInfoDestinationSettings => {

              },    # OPTIONAL
              Scte27DestinationSettings => {

              },    # OPTIONAL
            },    # OPTIONAL
            LanguageDescription => 'My__string',
          },
          ...
        ],        # OPTIONAL
      },    # OPTIONAL
      InputAttachments => [
        {
          InputId       => 'My__string',
          InputSettings => {
            VideoSelector => {
              ColorSpace =>
                'FOLLOW',    # values: FOLLOW, REC_601, REC_709; OPTIONAL
              SelectorSettings => {
                VideoSelectorProgramId => {
                  ProgramId => 1,    # max: 65536
                },    # OPTIONAL
                VideoSelectorPid => {
                  Pid => 1,    # max: 8191
                },    # OPTIONAL
              },    # OPTIONAL
              ColorSpaceUsage => 'FALLBACK', # values: FALLBACK, FORCE; OPTIONAL
            },    # OPTIONAL
            FilterStrength       => 1,    # min: 1, max: 5; OPTIONAL
            NetworkInputSettings => {
              ServerValidation => 'CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME'
              , # values: CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY; OPTIONAL
              HlsInputSettings => {
                BufferSegments => 1,    # OPTIONAL
                Bandwidth      => 1,    # OPTIONAL
                Retries        => 1,    # OPTIONAL
                RetryInterval  => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            CaptionSelectors => [
              {
                Name             => 'My__string',
                LanguageCode     => 'My__string',
                SelectorSettings => {
                  Scte27SourceSettings => {
                    Pid => 1,    # min: 1, ; OPTIONAL
                  },    # OPTIONAL
                  AribSourceSettings => {

                  },    # OPTIONAL
                  Scte20SourceSettings => {
                    Source608ChannelNumber => 1,    # min: 1, max: 4
                    Convert608To708 =>
                      'DISABLED',    # values: DISABLED, UPCONVERT; OPTIONAL
                  },    # OPTIONAL
                  TeletextSourceSettings => { PageNumber => 'My__string', }
                  ,     # OPTIONAL
                  EmbeddedSourceSettings => {
                    Source608TrackNumber => 1,    # min: 1, max: 5; OPTIONAL
                    Scte20Detection => 'AUTO',    # values: AUTO, OFF; OPTIONAL
                    Convert608To708 =>
                      'DISABLED',    # values: DISABLED, UPCONVERT; OPTIONAL
                    Source608ChannelNumber => 1,    # min: 1, max: 4
                  },    # OPTIONAL
                  DvbSubSourceSettings => {
                    Pid => 1,    # min: 1, ; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],        # OPTIONAL
            DenoiseFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
            DeblockFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
            InputFilter    => 'AUTO', # values: AUTO, DISABLED, FORCED; OPTIONAL
            AudioSelectors => [
              {
                Name             => 'My__string',
                SelectorSettings => {
                  AudioPidSelection => {
                    Pid => 1,         # max: 8191

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
            SourceEndBehavior => 'CONTINUE',  # values: CONTINUE, LOOP; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      InputSpecification => {
        MaximumBitrate => 'MAX_10_MBPS'
        ,       # values: MAX_10_MBPS, MAX_20_MBPS, MAX_50_MBPS; OPTIONAL
        Codec      => 'MPEG2',    # values: MPEG2, AVC, HEVC; OPTIONAL
        Resolution => 'SD',       # values: SD, HD, UHD; OPTIONAL
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

