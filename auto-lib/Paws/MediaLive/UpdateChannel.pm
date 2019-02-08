
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
              PasswordParam => 'My__string',
              StreamName    => 'My__string',
              Url           => 'My__string',
              Username      => 'My__string',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      EncoderSettings => {
        AudioDescriptions => [
          {
            AudioSelectorName          => 'My__string',
            Name                       => 'My__string',
            AudioNormalizationSettings => {
              Algorithm =>
                'ITU_1770_1',    # values: ITU_1770_1, ITU_1770_2; OPTIONAL
              AlgorithmControl =>
                'CORRECT_AUDIO',    # values: CORRECT_AUDIO; OPTIONAL
              TargetLkfs => 1,      # OPTIONAL
            },    # OPTIONAL
            AudioType => 'CLEAN_EFFECTS'
            , # values: CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY; OPTIONAL
            AudioTypeControl =>
              'FOLLOW_INPUT',   # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
            CodecSettings => {
              AacSettings => {
                Bitrate    => 1,                  # OPTIONAL
                CodingMode => 'AD_RECEIVER_MIX'
                , # values: AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1; OPTIONAL
                InputType => 'BROADCASTER_MIXED_AD'
                ,    # values: BROADCASTER_MIXED_AD, NORMAL; OPTIONAL
                Profile         => 'HEV1',    # values: HEV1, HEV2, LC; OPTIONAL
                RateControlMode => 'CBR',     # values: CBR, VBR; OPTIONAL
                RawFormat  => 'LATM_LOAS',   # values: LATM_LOAS, NONE; OPTIONAL
                SampleRate => 1,             # OPTIONAL
                Spec       => 'MPEG2',       # values: MPEG2, MPEG4; OPTIONAL
                VbrQuality =>
                  'HIGH', # values: HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW; OPTIONAL
              },    # OPTIONAL
              Ac3Settings => {
                Bitrate       => 1,             # OPTIONAL
                BitstreamMode => 'COMMENTARY'
                , # values: COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER; OPTIONAL
                CodingMode => 'CODING_MODE_1_0'
                , # values: CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE; OPTIONAL
                Dialnorm => 1,    # min: 1, max: 31; OPTIONAL
                DrcProfile =>
                  'FILM_STANDARD',    # values: FILM_STANDARD, NONE; OPTIONAL
                LfeFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                MetadataControl => 'FOLLOW_INPUT'
                ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
              },    # OPTIONAL
              Eac3Settings => {
                AttenuationControl =>
                  'ATTENUATE_3_DB',    # values: ATTENUATE_3_DB, NONE; OPTIONAL
                Bitrate       => 1,             # OPTIONAL
                BitstreamMode => 'COMMENTARY'
                , # values: COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED; OPTIONAL
                CodingMode => 'CODING_MODE_1_0'
                , # values: CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2; OPTIONAL
                DcFilter => 'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                Dialnorm => 1,             # min: 1, max: 31; OPTIONAL
                DrcLine  => 'FILM_LIGHT'
                , # values: FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH; OPTIONAL
                DrcRf => 'FILM_LIGHT'
                , # values: FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH; OPTIONAL
                LfeControl => 'LFE',       # values: LFE, NO_LFE; OPTIONAL
                LfeFilter  => 'DISABLED',  # values: DISABLED, ENABLED; OPTIONAL
                LoRoCenterMixLevel   => 1,               # OPTIONAL
                LoRoSurroundMixLevel => 1,               # OPTIONAL
                LtRtCenterMixLevel   => 1,               # OPTIONAL
                LtRtSurroundMixLevel => 1,               # OPTIONAL
                MetadataControl      => 'FOLLOW_INPUT'
                ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                PassthroughControl => 'NO_PASSTHROUGH'
                ,    # values: NO_PASSTHROUGH, WHEN_POSSIBLE; OPTIONAL
                PhaseControl =>
                  'NO_SHIFT',    # values: NO_SHIFT, SHIFT_90_DEGREES; OPTIONAL
                StereoDownmix =>
                  'DPL2',  # values: DPL2, LO_RO, LT_RT, NOT_INDICATED; OPTIONAL
                SurroundExMode => 'DISABLED'
                ,          # values: DISABLED, ENABLED, NOT_INDICATED; OPTIONAL
                SurroundMode => 'DISABLED'
                ,          # values: DISABLED, ENABLED, NOT_INDICATED; OPTIONAL
              },    # OPTIONAL
              Mp2Settings => {
                Bitrate    => 1,                  # OPTIONAL
                CodingMode => 'CODING_MODE_1_0'
                ,    # values: CODING_MODE_1_0, CODING_MODE_2_0; OPTIONAL
                SampleRate => 1,    # OPTIONAL
              },    # OPTIONAL
              PassThroughSettings => {

              },    # OPTIONAL
            },    # OPTIONAL
            LanguageCode => 'My__stringMin3Max3',    # min: 3, max: 3; OPTIONAL
            LanguageCodeControl =>
              'FOLLOW_INPUT',   # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
            RemixSettings => {
              ChannelMappings => [
                {
                  InputChannelLevels => [
                    {
                      Gain         => 1,    # min: -60, max: 6
                      InputChannel => 1,    # max: 15

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
            StreamName => 'My__string',
          },
          ...
        ],
        OutputGroups => [
          {
            OutputGroupSettings => {
              ArchiveGroupSettings => {
                Destination => { DestinationRefId => 'My__string', },
                RolloverInterval => 1,    # min: 1; OPTIONAL
              },    # OPTIONAL
              FrameCaptureGroupSettings => {
                Destination => { DestinationRefId => 'My__string', },

              },    # OPTIONAL
              HlsGroupSettings => {
                Destination => { DestinationRefId => 'My__string', },
                AdMarkers   => [
                  'ADOBE', ...    # values: ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
                ],                # OPTIONAL
                BaseUrlContent          => 'My__string',
                BaseUrlManifest         => 'My__string',
                CaptionLanguageMappings => [
                  {
                    CaptionChannel => 1,    # min: 1, max: 4
                    LanguageCode =>
                      'My__stringMin3Max3',    # min: 3, max: 3; OPTIONAL
                    LanguageDescription => 'My__stringMin1',  # min: 1; OPTIONAL

                  },
                  ...
                ],                                            # OPTIONAL
                CaptionLanguageSetting =>
                  'INSERT',    # values: INSERT, NONE, OMIT; OPTIONAL
                ClientCache => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                CodecSpecification =>
                  'RFC_4281',    # values: RFC_4281, RFC_6381; OPTIONAL
                ConstantIv =>
                  'My__stringMin32Max32',    # min: 32, max: 32; OPTIONAL
                DirectoryStructure => 'SINGLE_DIRECTORY'
                ,  # values: SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM; OPTIONAL
                EncryptionType =>
                  'AES128',    # values: AES128, SAMPLE_AES; OPTIONAL
                HlsCdnSettings => {
                  HlsAkamaiSettings => {
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    FilecacheDuration       => 1,    # max: 600; OPTIONAL
                    HttpTransferMode =>
                      'CHUNKED',    # values: CHUNKED, NON_CHUNKED; OPTIONAL
                    NumRetries   => 1,              # OPTIONAL
                    RestartDelay => 1,              # max: 15
                    Salt         => 'My__string',
                    Token        => 'My__string',
                  },    # OPTIONAL
                  HlsBasicPutSettings => {
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    FilecacheDuration       => 1,    # max: 600; OPTIONAL
                    NumRetries              => 1,    # OPTIONAL
                    RestartDelay            => 1,    # max: 15
                  },    # OPTIONAL
                  HlsMediaStoreSettings => {
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    FilecacheDuration       => 1,    # max: 600; OPTIONAL
                    MediaStoreStorageClass =>
                      'TEMPORAL',    # values: TEMPORAL; OPTIONAL
                    NumRetries   => 1,    # OPTIONAL
                    RestartDelay => 1,    # max: 15
                  },    # OPTIONAL
                  HlsWebdavSettings => {
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    FilecacheDuration       => 1,    # max: 600; OPTIONAL
                    HttpTransferMode =>
                      'CHUNKED',    # values: CHUNKED, NON_CHUNKED; OPTIONAL
                    NumRetries   => 1,    # OPTIONAL
                    RestartDelay => 1,    # max: 15
                  },    # OPTIONAL
                },    # OPTIONAL
                IFrameOnlyPlaylists =>
                  'DISABLED',    # values: DISABLED, STANDARD; OPTIONAL
                IndexNSegments => 1,    # min: 3; OPTIONAL
                InputLossAction =>
                  'EMIT_OUTPUT',   # values: EMIT_OUTPUT, PAUSE_OUTPUT; OPTIONAL
                IvInManifest => 'EXCLUDE',  # values: EXCLUDE, INCLUDE; OPTIONAL
                IvSource     => 'EXPLICIT'
                ,    # values: EXPLICIT, FOLLOWS_SEGMENT_NUMBER; OPTIONAL
                KeepSegments        => 1,              # min: 1; OPTIONAL
                KeyFormat           => 'My__string',
                KeyFormatVersions   => 'My__string',
                KeyProviderSettings => {
                  StaticKeySettings => {
                    StaticKeyValue =>
                      'My__stringMin32Max32',    # min: 32, max: 32; OPTIONAL
                    KeyProviderServer => {
                      Uri           => 'My__string',
                      PasswordParam => 'My__string',
                      Username      => 'My__string',
                    },                           # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                ManifestCompression => 'GZIP',    # values: GZIP, NONE; OPTIONAL
                ManifestDurationFormat =>
                  'FLOATING_POINT',  # values: FLOATING_POINT, INTEGER; OPTIONAL
                MinSegmentLength => 1,         # OPTIONAL
                Mode             => 'LIVE',    # values: LIVE, VOD; OPTIONAL
                OutputSelection => 'MANIFESTS_AND_SEGMENTS'
                ,    # values: MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY; OPTIONAL
                ProgramDateTime =>
                  'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                ProgramDateTimePeriod => 1,    # max: 3600; OPTIONAL
                RedundantManifest =>
                  'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                SegmentLength    => 1,                        # min: 1; OPTIONAL
                SegmentationMode => 'USE_INPUT_SEGMENTATION'
                , # values: USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION; OPTIONAL
                SegmentsPerSubdirectory => 1,    # min: 1; OPTIONAL
                StreamInfResolution =>
                  'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                TimedMetadataId3Frame =>
                  'NONE',       # values: NONE, PRIV, TDRL; OPTIONAL
                TimedMetadataId3Period     => 1,                  # OPTIONAL
                TimestampDeltaMilliseconds => 1,                  # OPTIONAL
                TsFileMode                 => 'SEGMENTED_FILES'
                ,    # values: SEGMENTED_FILES, SINGLE_FILE; OPTIONAL
              },    # OPTIONAL
              MsSmoothGroupSettings => {
                Destination        => { DestinationRefId => 'My__string', },
                AcquisitionPointId => 'My__string',
                AudioOnlyTimecodeControl => 'PASSTHROUGH'
                ,    # values: PASSTHROUGH, USE_CONFIGURED_CLOCK; OPTIONAL
                CertificateMode => 'SELF_SIGNED'
                ,    # values: SELF_SIGNED, VERIFY_AUTHENTICITY; OPTIONAL
                ConnectionRetryInterval => 1,              # OPTIONAL
                EventId                 => 'My__string',
                EventIdMode             => 'NO_EVENT_ID'
                , # values: NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP; OPTIONAL
                EventStopBehavior => 'NONE',  # values: NONE, SEND_EOS; OPTIONAL
                FilecacheDuration => 1,       # OPTIONAL
                FragmentLength    => 1,       # min: 1; OPTIONAL
                InputLossAction =>
                  'EMIT_OUTPUT',   # values: EMIT_OUTPUT, PAUSE_OUTPUT; OPTIONAL
                NumRetries       => 1,                         # OPTIONAL
                RestartDelay     => 1,                         # OPTIONAL
                SegmentationMode => 'USE_INPUT_SEGMENTATION'
                , # values: USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION; OPTIONAL
                SendDelayMs     => 1,         # max: 10000; OPTIONAL
                SparseTrackType => 'NONE',    # values: NONE, SCTE_35; OPTIONAL
                StreamManifestBehavior =>
                  'DO_NOT_SEND',    # values: DO_NOT_SEND, SEND; OPTIONAL
                TimestampOffset     => 'My__string',
                TimestampOffsetMode => 'USE_CONFIGURED_OFFSET'
                , # values: USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE; OPTIONAL
              },    # OPTIONAL
              RtmpGroupSettings => {
                AuthenticationScheme =>
                  'AKAMAI',    # values: AKAMAI, COMMON; OPTIONAL
                CacheFullBehavior => 'DISCONNECT_IMMEDIATELY'
                ,    # values: DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER; OPTIONAL
                CacheLength => 1,      # min: 30; OPTIONAL
                CaptionData => 'ALL'
                ,    # values: ALL, FIELD1_608, FIELD1_AND_FIELD2_608; OPTIONAL
                InputLossAction =>
                  'EMIT_OUTPUT',   # values: EMIT_OUTPUT, PAUSE_OUTPUT; OPTIONAL
                RestartDelay => 1, # OPTIONAL
              },    # OPTIONAL
              UdpGroupSettings => {
                InputLossAction => 'DROP_PROGRAM'
                ,    # values: DROP_PROGRAM, DROP_TS, EMIT_PROGRAM; OPTIONAL
                TimedMetadataId3Frame =>
                  'NONE',    # values: NONE, PRIV, TDRL; OPTIONAL
                TimedMetadataId3Period => 1,    # OPTIONAL
              },    # OPTIONAL
            },
            Outputs => [
              {
                OutputSettings => {
                  ArchiveOutputSettings => {
                    ContainerSettings => {
                      M2tsSettings => {
                        AbsentInputAudioBehavior =>
                          'DROP',    # values: DROP, ENCODE_SILENCE; OPTIONAL
                        Arib =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        AribCaptionsPid => 'My__string',
                        AribCaptionsPidControl =>
                          'AUTO',    # values: AUTO, USE_CONFIGURED; OPTIONAL
                        AudioBufferModel =>
                          'ATSC',    # values: ATSC, DVB; OPTIONAL
                        AudioFramesPerPes => 1,              # OPTIONAL
                        AudioPids         => 'My__string',
                        AudioStreamType => 'ATSC', # values: ATSC, DVB; OPTIONAL
                        Bitrate         => 1,      # OPTIONAL
                        BufferModel =>
                          'MULTIPLEX',    # values: MULTIPLEX, NONE; OPTIONAL
                        CcDescriptor =>
                          'DISABLED',     # values: DISABLED, ENABLED; OPTIONAL
                        DvbNitSettings => {
                          NetworkId => 1,    # max: 65536
                          NetworkName =>
                            'My__stringMin1Max256', # min: 1, max: 256; OPTIONAL
                          RepInterval => 1,    # min: 25, max: 10000; OPTIONAL
                        },    # OPTIONAL
                        DvbSdtSettings => {
                          OutputSdt => 'SDT_FOLLOW'
                          , # values: SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE; OPTIONAL
                          RepInterval => 1,    # min: 25, max: 2000; OPTIONAL
                          ServiceName =>
                            'My__stringMin1Max256', # min: 1, max: 256; OPTIONAL
                          ServiceProviderName =>
                            'My__stringMin1Max256', # min: 1, max: 256; OPTIONAL
                        },    # OPTIONAL
                        DvbSubPids     => 'My__string',
                        DvbTdtSettings => {
                          RepInterval => 1,    # min: 1000, max: 30000; OPTIONAL
                        },    # OPTIONAL
                        DvbTeletextPid => 'My__string',
                        Ebif => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        EbpAudioInterval => 'VIDEO_AND_FIXED_INTERVALS'
                        , # values: VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL; OPTIONAL
                        EbpLookaheadMs => 1,    # max: 10000; OPTIONAL
                        EbpPlacement => 'VIDEO_AND_AUDIO_PIDS'
                        ,    # values: VIDEO_AND_AUDIO_PIDS, VIDEO_PID; OPTIONAL
                        EcmPid => 'My__string',
                        EsRateInPes =>
                          'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                        EtvPlatformPid => 'My__string',
                        EtvSignalPid   => 'My__string',
                        FragmentTime   => 1,              # OPTIONAL
                        Klv => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        KlvDataPids       => 'My__string',
                        NullPacketBitrate => 1,            # OPTIONAL
                        PatInterval       => 1,            # max: 1000; OPTIONAL
                        PcrControl => 'CONFIGURED_PCR_PERIOD'
                        , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                        PcrPeriod   => 1,           # max: 500; OPTIONAL
                        PcrPid      => 'My__string',
                        PmtInterval => 1,           # max: 1000; OPTIONAL
                        PmtPid      => 'My__string',
                        ProgramNum  => 1,           # max: 65535; OPTIONAL
                        RateMode    => 'CBR',       # values: CBR, VBR; OPTIONAL
                        Scte27Pids  => 'My__string',
                        Scte35Control =>
                          'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        Scte35Pid           => 'My__string',
                        SegmentationMarkers => 'EBP'
                        , # values: EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART; OPTIONAL
                        SegmentationStyle => 'MAINTAIN_CADENCE'
                        ,    # values: MAINTAIN_CADENCE, RESET_CADENCE; OPTIONAL
                        SegmentationTime      => 1,                 # OPTIONAL
                        TimedMetadataBehavior => 'NO_PASSTHROUGH'
                        ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                        TimedMetadataPid  => 'My__string',
                        TransportStreamId => 1,           # max: 65535; OPTIONAL
                        VideoPid          => 'My__string',
                      },    # OPTIONAL
                    },
                    Extension    => 'My__string',
                    NameModifier => 'My__string',
                  },    # OPTIONAL
                  FrameCaptureOutputSettings =>
                    { NameModifier => 'My__string', },    # OPTIONAL
                  HlsOutputSettings => {
                    HlsSettings => {
                      AudioOnlyHlsSettings => {
                        AudioGroupId   => 'My__string',
                        AudioOnlyImage => {
                          Uri           => 'My__string',
                          PasswordParam => 'My__string',
                          Username      => 'My__string',
                        },                                # OPTIONAL
                        AudioTrackType => 'ALTERNATE_AUDIO_AUTO_SELECT'
                        , # values: ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM; OPTIONAL
                      },    # OPTIONAL
                      StandardHlsSettings => {
                        M3u8Settings => {
                          AudioFramesPerPes => 1,              # OPTIONAL
                          AudioPids         => 'My__string',
                          EcmPid            => 'My__string',
                          PatInterval => 1,    # max: 1000; OPTIONAL
                          PcrControl => 'CONFIGURED_PCR_PERIOD'
                          , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                          PcrPeriod   => 1,              # max: 500; OPTIONAL
                          PcrPid      => 'My__string',
                          PmtInterval => 1,              # max: 1000; OPTIONAL
                          PmtPid      => 'My__string',
                          ProgramNum  => 1,              # max: 65535; OPTIONAL
                          Scte35Behavior => 'NO_PASSTHROUGH'
                          ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                          Scte35Pid             => 'My__string',
                          TimedMetadataBehavior => 'NO_PASSTHROUGH'
                          ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                          TimedMetadataPid => 'My__string',
                          TransportStreamId => 1,    # max: 65535; OPTIONAL
                          VideoPid => 'My__string',
                        },
                        AudioRenditionSets => 'My__string',
                      },    # OPTIONAL
                    },
                    NameModifier    => 'My__stringMin1',    # min: 1; OPTIONAL
                    SegmentModifier => 'My__string',
                  },    # OPTIONAL
                  MsSmoothOutputSettings => { NameModifier => 'My__string', }
                  ,     # OPTIONAL
                  RtmpOutputSettings => {
                    Destination     => { DestinationRefId => 'My__string', },
                    CertificateMode => 'SELF_SIGNED'
                    ,    # values: SELF_SIGNED, VERIFY_AUTHENTICITY; OPTIONAL
                    ConnectionRetryInterval => 1,    # min: 1; OPTIONAL
                    NumRetries              => 1,    # OPTIONAL
                  },    # OPTIONAL
                  UdpOutputSettings => {
                    ContainerSettings => {
                      M2tsSettings => {
                        AbsentInputAudioBehavior =>
                          'DROP',    # values: DROP, ENCODE_SILENCE; OPTIONAL
                        Arib =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        AribCaptionsPid => 'My__string',
                        AribCaptionsPidControl =>
                          'AUTO',    # values: AUTO, USE_CONFIGURED; OPTIONAL
                        AudioBufferModel =>
                          'ATSC',    # values: ATSC, DVB; OPTIONAL
                        AudioFramesPerPes => 1,              # OPTIONAL
                        AudioPids         => 'My__string',
                        AudioStreamType => 'ATSC', # values: ATSC, DVB; OPTIONAL
                        Bitrate         => 1,      # OPTIONAL
                        BufferModel =>
                          'MULTIPLEX',    # values: MULTIPLEX, NONE; OPTIONAL
                        CcDescriptor =>
                          'DISABLED',     # values: DISABLED, ENABLED; OPTIONAL
                        DvbNitSettings => {
                          NetworkId => 1,    # max: 65536
                          NetworkName =>
                            'My__stringMin1Max256', # min: 1, max: 256; OPTIONAL
                          RepInterval => 1,    # min: 25, max: 10000; OPTIONAL
                        },    # OPTIONAL
                        DvbSdtSettings => {
                          OutputSdt => 'SDT_FOLLOW'
                          , # values: SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE; OPTIONAL
                          RepInterval => 1,    # min: 25, max: 2000; OPTIONAL
                          ServiceName =>
                            'My__stringMin1Max256', # min: 1, max: 256; OPTIONAL
                          ServiceProviderName =>
                            'My__stringMin1Max256', # min: 1, max: 256; OPTIONAL
                        },    # OPTIONAL
                        DvbSubPids     => 'My__string',
                        DvbTdtSettings => {
                          RepInterval => 1,    # min: 1000, max: 30000; OPTIONAL
                        },    # OPTIONAL
                        DvbTeletextPid => 'My__string',
                        Ebif => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        EbpAudioInterval => 'VIDEO_AND_FIXED_INTERVALS'
                        , # values: VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL; OPTIONAL
                        EbpLookaheadMs => 1,    # max: 10000; OPTIONAL
                        EbpPlacement => 'VIDEO_AND_AUDIO_PIDS'
                        ,    # values: VIDEO_AND_AUDIO_PIDS, VIDEO_PID; OPTIONAL
                        EcmPid => 'My__string',
                        EsRateInPes =>
                          'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                        EtvPlatformPid => 'My__string',
                        EtvSignalPid   => 'My__string',
                        FragmentTime   => 1,              # OPTIONAL
                        Klv => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        KlvDataPids       => 'My__string',
                        NullPacketBitrate => 1,            # OPTIONAL
                        PatInterval       => 1,            # max: 1000; OPTIONAL
                        PcrControl => 'CONFIGURED_PCR_PERIOD'
                        , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                        PcrPeriod   => 1,           # max: 500; OPTIONAL
                        PcrPid      => 'My__string',
                        PmtInterval => 1,           # max: 1000; OPTIONAL
                        PmtPid      => 'My__string',
                        ProgramNum  => 1,           # max: 65535; OPTIONAL
                        RateMode    => 'CBR',       # values: CBR, VBR; OPTIONAL
                        Scte27Pids  => 'My__string',
                        Scte35Control =>
                          'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        Scte35Pid           => 'My__string',
                        SegmentationMarkers => 'EBP'
                        , # values: EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART; OPTIONAL
                        SegmentationStyle => 'MAINTAIN_CADENCE'
                        ,    # values: MAINTAIN_CADENCE, RESET_CADENCE; OPTIONAL
                        SegmentationTime      => 1,                 # OPTIONAL
                        TimedMetadataBehavior => 'NO_PASSTHROUGH'
                        ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                        TimedMetadataPid  => 'My__string',
                        TransportStreamId => 1,           # max: 65535; OPTIONAL
                        VideoPid          => 'My__string',
                      },    # OPTIONAL
                    },
                    Destination => { DestinationRefId => 'My__string', },
                    BufferMsec        => 1,    # max: 10000; OPTIONAL
                    FecOutputSettings => {
                      ColumnDepth => 1,        # min: 4, max: 20; OPTIONAL
                      IncludeFec =>
                        'COLUMN',    # values: COLUMN, COLUMN_AND_ROW; OPTIONAL
                      RowLength => 1,    # min: 1, max: 20; OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                },
                AudioDescriptionNames   => [ 'My__string', ... ],    # OPTIONAL
                CaptionDescriptionNames => [ 'My__string', ... ],    # OPTIONAL
                OutputName =>
                  'My__stringMin1Max255',    # min: 1, max: 255; OPTIONAL
                VideoDescriptionName => 'My__string',
              },
              ...
            ],
            Name => 'My__stringMax32',       # max: 32; OPTIONAL
          },
          ...
        ],
        TimecodeConfig => {
          Source => 'EMBEDDED',    # values: EMBEDDED, SYSTEMCLOCK, ZEROBASED
          SyncThreshold => 1,      # min: 1, max: 1000000; OPTIONAL
        },
        VideoDescriptions => [
          {
            Name          => 'My__string',
            CodecSettings => {
              FrameCaptureSettings => {
                CaptureInterval => 1,    # min: 1, max: 3600

              },    # OPTIONAL
              H264Settings => {
                AdaptiveQuantization => 'HIGH'
                ,    # values: HIGH, HIGHER, LOW, MAX, MEDIUM, OFF; OPTIONAL
                AfdSignaling  => 'AUTO',   # values: AUTO, FIXED, NONE; OPTIONAL
                Bitrate       => 1,        # min: 1000; OPTIONAL
                BufFillPct    => 1,        # max: 100; OPTIONAL
                BufSize       => 1,        # OPTIONAL
                ColorMetadata => 'IGNORE', # values: IGNORE, INSERT; OPTIONAL
                EntropyEncoding => 'CABAC',     # values: CABAC, CAVLC; OPTIONAL
                FixedAfd        => 'AFD_0000'
                , # values: AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111; OPTIONAL
                FlickerAq => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                FramerateControl => 'INITIALIZE_FROM_SOURCE'
                ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                FramerateDenominator => 1,    # min: 1; OPTIONAL
                FramerateNumerator   => 1,    # min: 1; OPTIONAL
                GopBReference =>
                  'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                GopClosedCadence => 1,    # OPTIONAL
                GopNumBFrames    => 1,    # max: 7; OPTIONAL
                GopSize          => 1,    # OPTIONAL
                GopSizeUnits => 'FRAMES', # values: FRAMES, SECONDS; OPTIONAL
                Level => 'H264_LEVEL_1'
                , # values: H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO; OPTIONAL
                LookAheadRateControl =>
                  'HIGH',    # values: HIGH, LOW, MEDIUM; OPTIONAL
                MaxBitrate   => 1,    # min: 1000; OPTIONAL
                MinIInterval => 1,    # max: 30; OPTIONAL
                NumRefFrames => 1,    # min: 1, max: 6; OPTIONAL
                ParControl => 'INITIALIZE_FROM_SOURCE'
                ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                ParDenominator => 1,           # min: 1; OPTIONAL
                ParNumerator   => 1,           # OPTIONAL
                Profile        => 'BASELINE'
                , # values: BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN; OPTIONAL
                QvbrQualityLevel => 1,        # min: 1, max: 10; OPTIONAL
                RateControlMode  => 'CBR',    # values: CBR, QVBR, VBR; OPTIONAL
                ScanType =>
                  'INTERLACED',    # values: INTERLACED, PROGRESSIVE; OPTIONAL
                SceneChangeDetect =>
                  'DISABLED',      # values: DISABLED, ENABLED; OPTIONAL
                Slices    => 1,            # min: 1, max: 32; OPTIONAL
                Softness  => 1,            # max: 128; OPTIONAL
                SpatialAq => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                SubgopLength => 'DYNAMIC', # values: DYNAMIC, FIXED; OPTIONAL
                Syntax       => 'DEFAULT', # values: DEFAULT, RP2027; OPTIONAL
                TemporalAq => 'DISABLED',  # values: DISABLED, ENABLED; OPTIONAL
                TimecodeInsertion =>
                  'DISABLED',    # values: DISABLED, PIC_TIMING_SEI; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Height => 1,    # OPTIONAL
            RespondToAfd =>
              'NONE',       # values: NONE, PASSTHROUGH, RESPOND; OPTIONAL
            ScalingBehavior =>
              'DEFAULT',    # values: DEFAULT, STRETCH_TO_OUTPUT; OPTIONAL
            Sharpness => 1, # max: 100; OPTIONAL
            Width     => 1, # OPTIONAL
          },
          ...
        ],
        AvailBlanking => {
          AvailBlankingImage => {
            Uri           => 'My__string',
            PasswordParam => 'My__string',
            Username      => 'My__string',
          },    # OPTIONAL
          State => 'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
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
            PasswordParam => 'My__string',
            Username      => 'My__string',
          },    # OPTIONAL
          NetworkEndBlackout =>
            'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
          NetworkEndBlackoutImage => {
            Uri           => 'My__string',
            PasswordParam => 'My__string',
            Username      => 'My__string',
          },               # OPTIONAL
          NetworkId => 'My__stringMin34Max34',    # min: 34, max: 34; OPTIONAL
          State => 'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
        },    # OPTIONAL
        CaptionDescriptions => [
          {
            CaptionSelectorName => 'My__string',
            Name                => 'My__string',
            DestinationSettings => {
              AribDestinationSettings => {

              },    # OPTIONAL
              BurnInDestinationSettings => {
                Alignment =>
                  'CENTERED',    # values: CENTERED, LEFT, SMART; OPTIONAL
                BackgroundColor =>
                  'BLACK',       # values: BLACK, NONE, WHITE; OPTIONAL
                BackgroundOpacity => 1,    # max: 255; OPTIONAL
                Font              => {
                  Uri           => 'My__string',
                  PasswordParam => 'My__string',
                  Username      => 'My__string',
                },                         # OPTIONAL
                FontColor => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                FontOpacity    => 1,              # max: 255; OPTIONAL
                FontResolution => 1,              # min: 96, max: 600; OPTIONAL
                FontSize       => 'My__string',
                OutlineColor   => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                OutlineSize   => 1,       # max: 10; OPTIONAL
                ShadowColor   => 'BLACK', # values: BLACK, NONE, WHITE; OPTIONAL
                ShadowOpacity => 1,       # max: 255; OPTIONAL
                ShadowXOffset => 1,       # OPTIONAL
                ShadowYOffset => 1,       # OPTIONAL
                TeletextGridControl =>
                  'FIXED',                # values: FIXED, SCALED; OPTIONAL
                XPosition => 1,           # OPTIONAL
                YPosition => 1,           # OPTIONAL
              },    # OPTIONAL
              DvbSubDestinationSettings => {
                Alignment =>
                  'CENTERED',    # values: CENTERED, LEFT, SMART; OPTIONAL
                BackgroundColor =>
                  'BLACK',       # values: BLACK, NONE, WHITE; OPTIONAL
                BackgroundOpacity => 1,    # max: 255; OPTIONAL
                Font              => {
                  Uri           => 'My__string',
                  PasswordParam => 'My__string',
                  Username      => 'My__string',
                },                         # OPTIONAL
                FontColor => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                FontOpacity    => 1,              # max: 255; OPTIONAL
                FontResolution => 1,              # min: 96, max: 600; OPTIONAL
                FontSize       => 'My__string',
                OutlineColor   => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                OutlineSize   => 1,       # max: 10; OPTIONAL
                ShadowColor   => 'BLACK', # values: BLACK, NONE, WHITE; OPTIONAL
                ShadowOpacity => 1,       # max: 255; OPTIONAL
                ShadowXOffset => 1,       # OPTIONAL
                ShadowYOffset => 1,       # OPTIONAL
                TeletextGridControl =>
                  'FIXED',                # values: FIXED, SCALED; OPTIONAL
                XPosition => 1,           # OPTIONAL
                YPosition => 1,           # OPTIONAL
              },    # OPTIONAL
              EmbeddedDestinationSettings => {

              },    # OPTIONAL
              EmbeddedPlusScte20DestinationSettings => {

              },    # OPTIONAL
              RtmpCaptionInfoDestinationSettings => {

              },    # OPTIONAL
              Scte20PlusEmbeddedDestinationSettings => {

              },    # OPTIONAL
              Scte27DestinationSettings => {

              },    # OPTIONAL
              SmpteTtDestinationSettings => {

              },    # OPTIONAL
              TeletextDestinationSettings => {

              },    # OPTIONAL
              TtmlDestinationSettings => {
                StyleControl =>
                  'PASSTHROUGH', # values: PASSTHROUGH, USE_CONFIGURED; OPTIONAL
              },    # OPTIONAL
              WebvttDestinationSettings => {

              },    # OPTIONAL
            },    # OPTIONAL
            LanguageCode        => 'My__string',
            LanguageDescription => 'My__string',
          },
          ...
        ],        # OPTIONAL
        GlobalConfiguration => {
          InitialAudioGain => 1,    # min: -60, max: 60; OPTIONAL
          InputEndAction =>
            'NONE',    # values: NONE, SWITCH_AND_LOOP_INPUTS; OPTIONAL
          InputLossBehavior => {
            BlackFrameMsec => 1,    # max: 1000000; OPTIONAL
            InputLossImageColor =>
              'My__stringMin6Max6',    # min: 6, max: 6; OPTIONAL
            InputLossImageSlate => {
              Uri           => 'My__string',
              PasswordParam => 'My__string',
              Username      => 'My__string',
            },                         # OPTIONAL
            InputLossImageType => 'COLOR',    # values: COLOR, SLATE; OPTIONAL
            RepeatFrameMsec    => 1,          # max: 1000000; OPTIONAL
          },    # OPTIONAL
          OutputTimingSource =>
            'INPUT_CLOCK',    # values: INPUT_CLOCK, SYSTEM_CLOCK; OPTIONAL
          SupportLowFramerateInputs =>
            'DISABLED',       # values: DISABLED, ENABLED; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      InputAttachments => [
        {
          InputAttachmentName => 'My__string',
          InputId             => 'My__string',
          InputSettings       => {
            AudioSelectors => [
              {
                Name             => 'My__stringMin1',    # min: 1; OPTIONAL
                SelectorSettings => {
                  AudioLanguageSelection => {
                    LanguageCode => 'My__string',
                    LanguageSelectionPolicy =>
                      'LOOSE',    # values: LOOSE, STRICT; OPTIONAL
                  },    # OPTIONAL
                  AudioPidSelection => {
                    Pid => 1,    # max: 8191

                  },    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],        # OPTIONAL
            CaptionSelectors => [
              {
                Name             => 'My__stringMin1',    # min: 1; OPTIONAL
                LanguageCode     => 'My__string',
                SelectorSettings => {
                  AribSourceSettings => {

                  },                                     # OPTIONAL
                  DvbSubSourceSettings => {
                    Pid => 1,                            # min: 1; OPTIONAL
                  },    # OPTIONAL
                  EmbeddedSourceSettings => {
                    Convert608To708 =>
                      'DISABLED',    # values: DISABLED, UPCONVERT; OPTIONAL
                    Scte20Detection => 'AUTO',    # values: AUTO, OFF; OPTIONAL
                    Source608ChannelNumber => 1,  # min: 1, max: 4
                    Source608TrackNumber   => 1,  # min: 1, max: 5; OPTIONAL
                  },    # OPTIONAL
                  Scte20SourceSettings => {
                    Convert608To708 =>
                      'DISABLED',    # values: DISABLED, UPCONVERT; OPTIONAL
                    Source608ChannelNumber => 1,    # min: 1, max: 4
                  },    # OPTIONAL
                  Scte27SourceSettings => {
                    Pid => 1,    # min: 1; OPTIONAL
                  },    # OPTIONAL
                  TeletextSourceSettings => { PageNumber => 'My__string', }
                  ,     # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],        # OPTIONAL
            DeblockFilter  => 'DISABLED',  # values: DISABLED, ENABLED; OPTIONAL
            DenoiseFilter  => 'DISABLED',  # values: DISABLED, ENABLED; OPTIONAL
            FilterStrength => 1,           # min: 1, max: 5; OPTIONAL
            InputFilter => 'AUTO',    # values: AUTO, DISABLED, FORCED; OPTIONAL
            NetworkInputSettings => {
              HlsInputSettings => {
                Bandwidth      => 1,    # OPTIONAL
                BufferSegments => 1,    # OPTIONAL
                Retries        => 1,    # OPTIONAL
                RetryInterval  => 1,    # OPTIONAL
              },    # OPTIONAL
              ServerValidation => 'CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME'
              , # values: CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY; OPTIONAL
            },    # OPTIONAL
            SourceEndBehavior => 'CONTINUE',  # values: CONTINUE, LOOP; OPTIONAL
            VideoSelector     => {
              ColorSpace =>
                'FOLLOW',    # values: FOLLOW, REC_601, REC_709; OPTIONAL
              ColorSpaceUsage => 'FALLBACK', # values: FALLBACK, FORCE; OPTIONAL
              SelectorSettings => {
                VideoSelectorPid => {
                  Pid => 1,                  # max: 8191
                },    # OPTIONAL
                VideoSelectorProgramId => {
                  ProgramId => 1,    # max: 65536
                },    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      InputSpecification => {
        Codec          => 'MPEG2',        # values: MPEG2, AVC, HEVC; OPTIONAL
        MaximumBitrate => 'MAX_10_MBPS'
        ,    # values: MAX_10_MBPS, MAX_20_MBPS, MAX_50_MBPS; OPTIONAL
        Resolution => 'SD',    # values: SD, HD, UHD; OPTIONAL
      },    # OPTIONAL
      LogLevel => 'ERROR',         # OPTIONAL
      Name     => 'My__string',    # OPTIONAL
      RoleArn  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Destinations       = $UpdateChannelResponse->Destinations;
    my $EncoderSettings    = $UpdateChannelResponse->EncoderSettings;
    my $InputAttachments   = $UpdateChannelResponse->InputAttachments;
    my $InputSpecification = $UpdateChannelResponse->InputSpecification;
    my $LogLevel           = $UpdateChannelResponse->LogLevel;
    my $Name               = $UpdateChannelResponse->Name;
    my $RoleArn            = $UpdateChannelResponse->RoleArn;

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

