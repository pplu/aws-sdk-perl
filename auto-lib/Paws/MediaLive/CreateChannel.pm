
package Paws::MediaLive::CreateChannel;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputDestination]', traits => ['NameInRequest'], request_name => 'destinations');
  has EncoderSettings => (is => 'ro', isa => 'Paws::MediaLive::EncoderSettings', traits => ['NameInRequest'], request_name => 'encoderSettings');
  has InputAttachments => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputAttachment]', traits => ['NameInRequest'], request_name => 'inputAttachments');
  has InputSpecification => (is => 'ro', isa => 'Paws::MediaLive::InputSpecification', traits => ['NameInRequest'], request_name => 'inputSpecification');
  has LogLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logLevel');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has Reserved => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reserved');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/channels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::CreateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateChannel - Arguments for method CreateChannel on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannel on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method CreateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannel.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $CreateChannelResponse = $medialive->CreateChannel(
      Destinations => [
        {
          Id       => 'My__string',    # OPTIONAL
          Settings => [
            {
              Url           => 'My__string',    # OPTIONAL
              StreamName    => 'My__string',    # OPTIONAL
              Username      => 'My__string',    # OPTIONAL
              PasswordParam => 'My__string',    # OPTIONAL
            },
            ...
          ],                                    # OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      EncoderSettings => {
        AudioDescriptions => [
          {
            Name              => 'My__string',    # OPTIONAL
            AudioSelectorName => 'My__string',    # OPTIONAL
            RemixSettings     => {
              ChannelMappings => [
                {
                  OutputChannel      => 1,        # max: 7; OPTIONAL
                  InputChannelLevels => [
                    {
                      Gain         => 1,          # min: -60, max: 6
                      InputChannel => 1,          # max: 15

                    },
                    ...
                  ],

                },
                ...
              ],
              ChannelsIn  => 1,                   # min: 1, max: 16; OPTIONAL
              ChannelsOut => 1,                   # min: 1, max: 8; OPTIONAL
            },    # OPTIONAL
            CodecSettings => {
              PassThroughSettings => {

              },    # OPTIONAL
              AacSettings => {
                VbrQuality =>
                  'HIGH', # values: HIGH, LOW, MEDIUM_HIGH, MEDIUM_LOW; OPTIONAL
                RawFormat => 'LATM_LOAS',    # values: LATM_LOAS, NONE; OPTIONAL
                InputType => 'BROADCASTER_MIXED_AD'
                ,    # values: BROADCASTER_MIXED_AD, NORMAL; OPTIONAL
                Spec       => 'MPEG2',          # values: MPEG2, MPEG4; OPTIONAL
                SampleRate => 1,                # OPTIONAL
                Bitrate    => 1,                # OPTIONAL
                CodingMode => 'AD_RECEIVER_MIX'
                , # values: AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1; OPTIONAL
                RateControlMode => 'CBR',     # values: CBR, VBR; OPTIONAL
                Profile         => 'HEV1',    # values: HEV1, HEV2, LC; OPTIONAL
              },    # OPTIONAL
              Eac3Settings => {
                SurroundExMode => 'DISABLED'
                ,    # values: DISABLED, ENABLED, NOT_INDICATED; OPTIONAL
                StereoDownmix =>
                  'DPL2',  # values: DPL2, LO_RO, LT_RT, NOT_INDICATED; OPTIONAL
                AttenuationControl =>
                  'ATTENUATE_3_DB',    # values: ATTENUATE_3_DB, NONE; OPTIONAL
                PhaseControl =>
                  'NO_SHIFT',    # values: NO_SHIFT, SHIFT_90_DEGREES; OPTIONAL
                LfeFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                LoRoSurroundMixLevel => 1,           # OPTIONAL
                SurroundMode         => 'DISABLED'
                ,    # values: DISABLED, ENABLED, NOT_INDICATED; OPTIONAL
                PassthroughControl => 'NO_PASSTHROUGH'
                ,    # values: NO_PASSTHROUGH, WHEN_POSSIBLE; OPTIONAL
                DrcLine => 'FILM_LIGHT'
                , # values: FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH; OPTIONAL
                LfeControl => 'LFE',       # values: LFE, NO_LFE; OPTIONAL
                DcFilter   => 'DISABLED',  # values: DISABLED, ENABLED; OPTIONAL
                CodingMode => 'CODING_MODE_1_0'
                , # values: CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2; OPTIONAL
                LtRtSurroundMixLevel => 1,               # OPTIONAL
                MetadataControl      => 'FOLLOW_INPUT'
                ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                LoRoCenterMixLevel => 1,             # OPTIONAL
                Bitrate            => 1,             # OPTIONAL
                BitstreamMode      => 'COMMENTARY'
                , # values: COMMENTARY, COMPLETE_MAIN, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED; OPTIONAL
                DrcRf => 'FILM_LIGHT'
                , # values: FILM_LIGHT, FILM_STANDARD, MUSIC_LIGHT, MUSIC_STANDARD, NONE, SPEECH; OPTIONAL
                LtRtCenterMixLevel => 1,    # OPTIONAL
                Dialnorm           => 1,    # min: 1, max: 31; OPTIONAL
              },    # OPTIONAL
              Mp2Settings => {
                CodingMode => 'CODING_MODE_1_0'
                ,    # values: CODING_MODE_1_0, CODING_MODE_2_0; OPTIONAL
                Bitrate    => 1,    # OPTIONAL
                SampleRate => 1,    # OPTIONAL
              },    # OPTIONAL
              Ac3Settings => {
                DrcProfile =>
                  'FILM_STANDARD',    # values: FILM_STANDARD, NONE; OPTIONAL
                LfeFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                MetadataControl => 'FOLLOW_INPUT'
                ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                Bitrate       => 1,             # OPTIONAL
                BitstreamMode => 'COMMENTARY'
                , # values: COMMENTARY, COMPLETE_MAIN, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER; OPTIONAL
                Dialnorm   => 1,                  # min: 1, max: 31; OPTIONAL
                CodingMode => 'CODING_MODE_1_0'
                , # values: CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            LanguageCode => 'My__stringMin3Max3',    # min: 3, max: 3; OPTIONAL
            AudioTypeControl =>
              'FOLLOW_INPUT',   # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
            AudioType => 'CLEAN_EFFECTS'
            , # values: CLEAN_EFFECTS, HEARING_IMPAIRED, UNDEFINED, VISUAL_IMPAIRED_COMMENTARY; OPTIONAL
            LanguageCodeControl =>
              'FOLLOW_INPUT',   # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
            AudioNormalizationSettings => {
              Algorithm =>
                'ITU_1770_1',    # values: ITU_1770_1, ITU_1770_2; OPTIONAL
              AlgorithmControl =>
                'CORRECT_AUDIO',    # values: CORRECT_AUDIO; OPTIONAL
              TargetLkfs => 1,      # OPTIONAL
            },    # OPTIONAL
            StreamName => 'My__string',    # OPTIONAL
          },
          ...
        ],
        OutputGroups => [
          {
            Outputs => [
              {
                OutputSettings => {
                  UdpOutputSettings => {
                    ContainerSettings => {
                      M2tsSettings => {
                        PatInterval    => 1,               # max: 1000; OPTIONAL
                        Scte35Pid      => 'My__string',    # OPTIONAL
                        DvbTdtSettings => {
                          RepInterval => 1,    # min: 1000, max: 30000; OPTIONAL
                        },    # OPTIONAL
                        PcrControl => 'CONFIGURED_PCR_PERIOD'
                        , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                        Scte35Control =>
                          'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        Scte27Pids => 'My__string',    # OPTIONAL
                        CcDescriptor =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        TimedMetadataBehavior => 'NO_PASSTHROUGH'
                        ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                        EbpAudioInterval => 'VIDEO_AND_FIXED_INTERVALS'
                        , # values: VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL; OPTIONAL
                        RateMode          => 'CBR', # values: CBR, VBR; OPTIONAL
                        TransportStreamId => 1,     # max: 65535; OPTIONAL
                        PmtInterval       => 1,     # max: 1000; OPTIONAL
                        PmtPid         => 'My__string',            # OPTIONAL
                        EtvPlatformPid => 'My__string',            # OPTIONAL
                        EbpPlacement   => 'VIDEO_AND_AUDIO_PIDS'
                        ,    # values: VIDEO_AND_AUDIO_PIDS, VIDEO_PID; OPTIONAL
                        EcmPid => 'My__string',    # OPTIONAL
                        AribCaptionsPidControl =>
                          'AUTO',    # values: AUTO, USE_CONFIGURED; OPTIONAL
                        BufferModel =>
                          'MULTIPLEX',    # values: MULTIPLEX, NONE; OPTIONAL
                        Ebif => 'NONE',   # values: NONE, PASSTHROUGH; OPTIONAL
                        AribCaptionsPid     => 'My__string',    # OPTIONAL
                        DvbSubPids          => 'My__string',    # OPTIONAL
                        SegmentationMarkers => 'EBP'
                        , # values: EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART; OPTIONAL
                        EtvSignalPid     => 'My__string',    # OPTIONAL
                        SegmentationTime => 1,               # OPTIONAL
                        Bitrate          => 1,               # OPTIONAL
                        Arib =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        DvbSdtSettings => {
                          ServiceName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                          RepInterval => 1,    # min: 25, max: 2000; OPTIONAL
                          OutputSdt => 'SDT_FOLLOW'
                          , # values: SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE; OPTIONAL
                          ServiceProviderName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                        },    # OPTIONAL
                        ProgramNum => 1,    # max: 65535; OPTIONAL
                        AudioBufferModel =>
                          'ATSC',           # values: ATSC, DVB; OPTIONAL
                        TimedMetadataPid => 'My__string',    # OPTIONAL
                        EsRateInPes =>
                          'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                        AudioPids         => 'My__string',        # OPTIONAL
                        SegmentationStyle => 'MAINTAIN_CADENCE'
                        ,    # values: MAINTAIN_CADENCE, RESET_CADENCE; OPTIONAL
                        AudioStreamType => 'ATSC', # values: ATSC, DVB; OPTIONAL
                        PcrPeriod       => 1,      # max: 500; OPTIONAL
                        EbpLookaheadMs  => 1,      # max: 10000; OPTIONAL
                        VideoPid => 'My__string',  # OPTIONAL
                        AbsentInputAudioBehavior =>
                          'DROP',    # values: DROP, ENCODE_SILENCE; OPTIONAL
                        DvbTeletextPid    => 'My__string',    # OPTIONAL
                        FragmentTime      => 1,               # OPTIONAL
                        AudioFramesPerPes => 1,               # OPTIONAL
                        DvbNitSettings    => {
                          NetworkName =>
                            'My__stringMin1Max256',           # min: 1, max: 256
                          NetworkId   => 1,    # max: 65536
                          RepInterval => 1,    # min: 25, max: 10000; OPTIONAL
                        },    # OPTIONAL
                        KlvDataPids       => 'My__string',    # OPTIONAL
                        NullPacketBitrate => 1,               # OPTIONAL
                        PcrPid            => 'My__string',    # OPTIONAL
                        Klv => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                      },    # OPTIONAL
                    },
                    Destination => {
                      DestinationRefId => 'My__string',    # OPTIONAL
                    },
                    FecOutputSettings => {
                      ColumnDepth => 1,    # min: 4, max: 20; OPTIONAL
                      IncludeFec =>
                        'COLUMN',    # values: COLUMN, COLUMN_AND_ROW; OPTIONAL
                      RowLength => 1,    # min: 1, max: 20; OPTIONAL
                    },    # OPTIONAL
                    BufferMsec => 1,    # max: 10000; OPTIONAL
                  },    # OPTIONAL
                  HlsOutputSettings => {
                    HlsSettings => {
                      StandardHlsSettings => {
                        M3u8Settings => {
                          PcrPeriod        => 1,            # max: 500; OPTIONAL
                          TimedMetadataPid => 'My__string', # OPTIONAL
                          AudioPids        => 'My__string', # OPTIONAL
                          ProgramNum => 1,               # max: 65535; OPTIONAL
                          PcrPid     => 'My__string',    # OPTIONAL
                          AudioFramesPerPes => 1,                     # OPTIONAL
                          VideoPid          => 'My__string',          # OPTIONAL
                          PcrControl        => 'CONFIGURED_PCR_PERIOD'
                          , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                          PatInterval => 1,               # max: 1000; OPTIONAL
                          Scte35Pid   => 'My__string',    # OPTIONAL
                          EcmPid      => 'My__string',    # OPTIONAL
                          PmtInterval => 1,               # max: 1000; OPTIONAL
                          PmtPid      => 'My__string',    # OPTIONAL
                          TransportStreamId => 1,         # max: 65535; OPTIONAL
                          TimedMetadataBehavior => 'NO_PASSTHROUGH'
                          ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                          Scte35Behavior => 'NO_PASSTHROUGH'
                          ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                        },
                        AudioRenditionSets => 'My__string',    # OPTIONAL
                      },    # OPTIONAL
                      AudioOnlyHlsSettings => {
                        AudioTrackType => 'ALTERNATE_AUDIO_AUTO_SELECT'
                        , # values: ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM; OPTIONAL
                        AudioGroupId   => 'My__string',    # OPTIONAL
                        AudioOnlyImage => {
                          Uri           => 'My__string',    # OPTIONAL
                          PasswordParam => 'My__string',    # OPTIONAL
                          Username      => 'My__string',    # OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                    },
                    NameModifier    => 'My__stringMin1',    # min: 1, ; OPTIONAL
                    SegmentModifier => 'My__string',        # OPTIONAL
                  },    # OPTIONAL
                  RtmpOutputSettings => {
                    Destination => {
                      DestinationRefId => 'My__string',    # OPTIONAL
                    },
                    ConnectionRetryInterval => 1,           # min: 1, ; OPTIONAL
                    NumRetries              => 1,           # OPTIONAL
                    CertificateMode         => 'SELF_SIGNED'
                    ,    # values: SELF_SIGNED, VERIFY_AUTHENTICITY; OPTIONAL
                  },    # OPTIONAL
                  MsSmoothOutputSettings => {
                    NameModifier => 'My__string',    # OPTIONAL
                  },    # OPTIONAL
                  ArchiveOutputSettings => {
                    ContainerSettings => {
                      M2tsSettings => {
                        PatInterval    => 1,               # max: 1000; OPTIONAL
                        Scte35Pid      => 'My__string',    # OPTIONAL
                        DvbTdtSettings => {
                          RepInterval => 1,    # min: 1000, max: 30000; OPTIONAL
                        },    # OPTIONAL
                        PcrControl => 'CONFIGURED_PCR_PERIOD'
                        , # values: CONFIGURED_PCR_PERIOD, PCR_EVERY_PES_PACKET; OPTIONAL
                        Scte35Control =>
                          'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                        Scte27Pids => 'My__string',    # OPTIONAL
                        CcDescriptor =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        TimedMetadataBehavior => 'NO_PASSTHROUGH'
                        ,    # values: NO_PASSTHROUGH, PASSTHROUGH; OPTIONAL
                        EbpAudioInterval => 'VIDEO_AND_FIXED_INTERVALS'
                        , # values: VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL; OPTIONAL
                        RateMode          => 'CBR', # values: CBR, VBR; OPTIONAL
                        TransportStreamId => 1,     # max: 65535; OPTIONAL
                        PmtInterval       => 1,     # max: 1000; OPTIONAL
                        PmtPid         => 'My__string',            # OPTIONAL
                        EtvPlatformPid => 'My__string',            # OPTIONAL
                        EbpPlacement   => 'VIDEO_AND_AUDIO_PIDS'
                        ,    # values: VIDEO_AND_AUDIO_PIDS, VIDEO_PID; OPTIONAL
                        EcmPid => 'My__string',    # OPTIONAL
                        AribCaptionsPidControl =>
                          'AUTO',    # values: AUTO, USE_CONFIGURED; OPTIONAL
                        BufferModel =>
                          'MULTIPLEX',    # values: MULTIPLEX, NONE; OPTIONAL
                        Ebif => 'NONE',   # values: NONE, PASSTHROUGH; OPTIONAL
                        AribCaptionsPid     => 'My__string',    # OPTIONAL
                        DvbSubPids          => 'My__string',    # OPTIONAL
                        SegmentationMarkers => 'EBP'
                        , # values: EBP, EBP_LEGACY, NONE, PSI_SEGSTART, RAI_ADAPT, RAI_SEGSTART; OPTIONAL
                        EtvSignalPid     => 'My__string',    # OPTIONAL
                        SegmentationTime => 1,               # OPTIONAL
                        Bitrate          => 1,               # OPTIONAL
                        Arib =>
                          'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                        DvbSdtSettings => {
                          ServiceName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                          RepInterval => 1,    # min: 25, max: 2000; OPTIONAL
                          OutputSdt => 'SDT_FOLLOW'
                          , # values: SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE; OPTIONAL
                          ServiceProviderName =>
                            'My__stringMin1Max256',    # min: 1, max: 256
                        },    # OPTIONAL
                        ProgramNum => 1,    # max: 65535; OPTIONAL
                        AudioBufferModel =>
                          'ATSC',           # values: ATSC, DVB; OPTIONAL
                        TimedMetadataPid => 'My__string',    # OPTIONAL
                        EsRateInPes =>
                          'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                        AudioPids         => 'My__string',        # OPTIONAL
                        SegmentationStyle => 'MAINTAIN_CADENCE'
                        ,    # values: MAINTAIN_CADENCE, RESET_CADENCE; OPTIONAL
                        AudioStreamType => 'ATSC', # values: ATSC, DVB; OPTIONAL
                        PcrPeriod       => 1,      # max: 500; OPTIONAL
                        EbpLookaheadMs  => 1,      # max: 10000; OPTIONAL
                        VideoPid => 'My__string',  # OPTIONAL
                        AbsentInputAudioBehavior =>
                          'DROP',    # values: DROP, ENCODE_SILENCE; OPTIONAL
                        DvbTeletextPid    => 'My__string',    # OPTIONAL
                        FragmentTime      => 1,               # OPTIONAL
                        AudioFramesPerPes => 1,               # OPTIONAL
                        DvbNitSettings    => {
                          NetworkName =>
                            'My__stringMin1Max256',           # min: 1, max: 256
                          NetworkId   => 1,    # max: 65536
                          RepInterval => 1,    # min: 25, max: 10000; OPTIONAL
                        },    # OPTIONAL
                        KlvDataPids       => 'My__string',    # OPTIONAL
                        NullPacketBitrate => 1,               # OPTIONAL
                        PcrPid            => 'My__string',    # OPTIONAL
                        Klv => 'NONE',    # values: NONE, PASSTHROUGH; OPTIONAL
                      },    # OPTIONAL
                    },
                    Extension    => 'My__string',    # OPTIONAL
                    NameModifier => 'My__string',    # OPTIONAL
                  },    # OPTIONAL
                },
                AudioDescriptionNames => [
                  'My__string', ...    # OPTIONAL
                ],                     # OPTIONAL
                OutputName =>
                  'My__stringMin1Max255',    # min: 1, max: 255; OPTIONAL
                CaptionDescriptionNames => [
                  'My__string', ...          # OPTIONAL
                ],                           # OPTIONAL
                VideoDescriptionName => 'My__string',    # OPTIONAL
              },
              ...
            ],
            OutputGroupSettings => {
              HlsGroupSettings => {
                Destination => {
                  DestinationRefId => 'My__string',      # OPTIONAL
                },
                TimedMetadataId3Period  => 1,            # OPTIONAL
                CaptionLanguageMappings => [
                  {
                    LanguageCode =>
                      'My__stringMin3Max3',    # min: 3, max: 3; OPTIONAL
                    CaptionChannel => 1,       # min: 1, max: 4
                    LanguageDescription =>
                      'My__stringMin1',        # min: 1, ; OPTIONAL

                  },
                  ...
                ],                             # OPTIONAL
                Mode => 'LIVE',                # values: LIVE, VOD; OPTIONAL
                CaptionLanguageSetting =>
                  'INSERT',    # values: INSERT, NONE, OMIT; OPTIONAL
                StreamInfResolution =>
                  'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                IvSource => 'EXPLICIT'
                ,    # values: EXPLICIT, FOLLOWS_SEGMENT_NUMBER; OPTIONAL
                KeyFormatVersions => 'My__string',    # OPTIONAL
                MinSegmentLength  => 1,               # OPTIONAL
                CodecSpecification =>
                  'RFC_4281',    # values: RFC_4281, RFC_6381; OPTIONAL
                SegmentsPerSubdirectory => 1,    # min: 1, ; OPTIONAL
                OutputSelection => 'MANIFESTS_AND_SEGMENTS'
                ,    # values: MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY; OPTIONAL
                BaseUrlManifest => 'My__string',              # OPTIONAL
                ConstantIv      => 'My__stringMin32Max32',    # min: 32, max: 32
                BaseUrlContent  => 'My__string',              # OPTIONAL
                TimestampDeltaMilliseconds => 1,                   # OPTIONAL
                DirectoryStructure         => 'SINGLE_DIRECTORY'
                ,  # values: SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM; OPTIONAL
                IndexNSegments => 1,    # min: 3, ; OPTIONAL
                KeepSegments   => 1,    # min: 1, ; OPTIONAL
                ManifestDurationFormat =>
                  'FLOATING_POINT',  # values: FLOATING_POINT, INTEGER; OPTIONAL
                ClientCache => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                InputLossAction =>
                  'EMIT_OUTPUT',   # values: EMIT_OUTPUT, PAUSE_OUTPUT; OPTIONAL
                IvInManifest => 'EXCLUDE',  # values: EXCLUDE, INCLUDE; OPTIONAL
                KeyProviderSettings => {
                  StaticKeySettings => {
                    StaticKeyValue => 'My__stringMin32Max32', # min: 32, max: 32
                    KeyProviderServer => {
                      Uri           => 'My__string',          # OPTIONAL
                      PasswordParam => 'My__string',          # OPTIONAL
                      Username      => 'My__string',          # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                TsFileMode => 'SEGMENTED_FILES'
                ,     # values: SEGMENTED_FILES, SINGLE_FILE; OPTIONAL
                ProgramDateTime =>
                  'EXCLUDE',    # values: EXCLUDE, INCLUDE; OPTIONAL
                KeyFormat             => 'My__string',    # OPTIONAL
                ProgramDateTimePeriod => 1,               # max: 3600; OPTIONAL
                SegmentLength         => 1,               # min: 1, ; OPTIONAL
                AdMarkers             => [
                  'ADOBE', ...    # values: ADOBE, ELEMENTAL, ELEMENTAL_SCTE35
                ],                # OPTIONAL
                TimedMetadataId3Frame =>
                  'NONE',         # values: NONE, PRIV, TDRL; OPTIONAL
                HlsCdnSettings => {
                  HlsWebdavSettings => {
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    NumRetries              => 1,    # OPTIONAL
                    HttpTransferMode =>
                      'CHUNKED',    # values: CHUNKED, NON_CHUNKED; OPTIONAL
                    FilecacheDuration => 1,    # max: 600; OPTIONAL
                    RestartDelay      => 1,    # max: 15
                  },    # OPTIONAL
                  HlsMediaStoreSettings => {
                    RestartDelay      => 1,    # max: 15
                    FilecacheDuration => 1,    # max: 600; OPTIONAL
                    MediaStoreStorageClass =>
                      'TEMPORAL',              # values: TEMPORAL; OPTIONAL
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    NumRetries              => 1,    # OPTIONAL
                  },    # OPTIONAL
                  HlsAkamaiSettings => {
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    NumRetries              => 1,    # OPTIONAL
                    HttpTransferMode =>
                      'CHUNKED',    # values: CHUNKED, NON_CHUNKED; OPTIONAL
                    FilecacheDuration => 1,               # max: 600; OPTIONAL
                    RestartDelay      => 1,               # max: 15
                    Token             => 'My__string',    # OPTIONAL
                    Salt              => 'My__string',    # OPTIONAL
                  },    # OPTIONAL
                  HlsBasicPutSettings => {
                    RestartDelay            => 1,    # max: 15
                    NumRetries              => 1,    # OPTIONAL
                    ConnectionRetryInterval => 1,    # OPTIONAL
                    FilecacheDuration       => 1,    # max: 600; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                SegmentationMode => 'USE_INPUT_SEGMENTATION'
                , # values: USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION; OPTIONAL
                EncryptionType =>
                  'AES128',    # values: AES128, SAMPLE_AES; OPTIONAL
                ManifestCompression => 'GZIP',    # values: GZIP, NONE; OPTIONAL
              },    # OPTIONAL
              UdpGroupSettings => {
                InputLossAction => 'DROP_PROGRAM'
                ,    # values: DROP_PROGRAM, DROP_TS, EMIT_PROGRAM; OPTIONAL
                TimedMetadataId3Frame =>
                  'NONE',    # values: NONE, PRIV, TDRL; OPTIONAL
                TimedMetadataId3Period => 1,    # OPTIONAL
              },    # OPTIONAL
              ArchiveGroupSettings => {
                Destination => {
                  DestinationRefId => 'My__string',    # OPTIONAL
                },
                RolloverInterval => 1,                 # min: 1, ; OPTIONAL
              },    # OPTIONAL
              RtmpGroupSettings => {
                AuthenticationScheme =>
                  'AKAMAI',    # values: AKAMAI, COMMON; OPTIONAL
                RestartDelay => 1,      # OPTIONAL
                CacheLength  => 1,      # min: 30, ; OPTIONAL
                CaptionData  => 'ALL'
                ,    # values: ALL, FIELD1_608, FIELD1_AND_FIELD2_608; OPTIONAL
                CacheFullBehavior => 'DISCONNECT_IMMEDIATELY'
                ,    # values: DISCONNECT_IMMEDIATELY, WAIT_FOR_SERVER; OPTIONAL
              },    # OPTIONAL
              MsSmoothGroupSettings => {
                Destination => {
                  DestinationRefId => 'My__string',    # OPTIONAL
                },
                RestartDelay => 1,                     # OPTIONAL
                InputLossAction =>
                  'EMIT_OUTPUT',   # values: EMIT_OUTPUT, PAUSE_OUTPUT; OPTIONAL
                TimestampOffset          => 'My__string',    # OPTIONAL
                AudioOnlyTimecodeControl => 'PASSTHROUGH'
                ,    # values: PASSTHROUGH, USE_CONFIGURED_CLOCK; OPTIONAL
                StreamManifestBehavior =>
                  'DO_NOT_SEND',    # values: DO_NOT_SEND, SEND; OPTIONAL
                EventIdMode => 'NO_EVENT_ID'
                , # values: NO_EVENT_ID, USE_CONFIGURED, USE_TIMESTAMP; OPTIONAL
                EventStopBehavior => 'NONE',  # values: NONE, SEND_EOS; OPTIONAL
                SegmentationMode => 'USE_INPUT_SEGMENTATION'
                , # values: USE_INPUT_SEGMENTATION, USE_SEGMENT_DURATION; OPTIONAL
                TimestampOffsetMode => 'USE_CONFIGURED_OFFSET'
                , # values: USE_CONFIGURED_OFFSET, USE_EVENT_START_DATE; OPTIONAL
                AcquisitionPointId      => 'My__string',    # OPTIONAL
                ConnectionRetryInterval => 1,               # OPTIONAL
                CertificateMode         => 'SELF_SIGNED'
                ,    # values: SELF_SIGNED, VERIFY_AUTHENTICITY; OPTIONAL
                NumRetries        => 1,        # OPTIONAL
                SparseTrackType   => 'NONE',   # values: NONE, SCTE_35; OPTIONAL
                FragmentLength    => 1,        # min: 1, ; OPTIONAL
                SendDelayMs       => 1,        # max: 10000; OPTIONAL
                FilecacheDuration => 1,        # OPTIONAL
                EventId => 'My__string',       # OPTIONAL
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
        VideoDescriptions => [
          {
            Name      => 'My__string',    # OPTIONAL
            Sharpness => 1,               # max: 100; OPTIONAL
            Width     => 1,               # OPTIONAL
            RespondToAfd =>
              'NONE',    # values: NONE, PASSTHROUGH, RESPOND; OPTIONAL
            CodecSettings => {
              H264Settings => {
                GopSize         => 1,           # OPTIONAL
                RateControlMode => 'CBR',       # values: CBR, VBR; OPTIONAL
                Softness        => 1,           # max: 128; OPTIONAL
                Profile         => 'BASELINE'
                , # values: BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN; OPTIONAL
                ScanType =>
                  'INTERLACED',    # values: INTERLACED, PROGRESSIVE; OPTIONAL
                ParControl => 'INITIALIZE_FROM_SOURCE'
                ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                EntropyEncoding  => 'CABAC',    # values: CABAC, CAVLC; OPTIONAL
                MinIInterval     => 1,          # max: 30; OPTIONAL
                NumRefFrames     => 1,          # min: 1, max: 6; OPTIONAL
                GopClosedCadence => 1,          # OPTIONAL
                GopNumBFrames    => 1,          # max: 7; OPTIONAL
                TimecodeInsertion =>
                  'DISABLED',    # values: DISABLED, PIC_TIMING_SEI; OPTIONAL
                FramerateNumerator => 1,    # OPTIONAL
                Bitrate            => 1,    # min: 1000, ; OPTIONAL
                Syntax     => 'DEFAULT',    # values: DEFAULT, RP2027; OPTIONAL
                BufFillPct => 1,            # max: 100; OPTIONAL
                FramerateControl => 'INITIALIZE_FROM_SOURCE'
                ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                Slices               => 1,    # min: 1, max: 32; OPTIONAL
                ParDenominator       => 1,    # min: 1, ; OPTIONAL
                FramerateDenominator => 1,    # OPTIONAL
                LookAheadRateControl =>
                  'HIGH',    # values: HIGH, LOW, MEDIUM; OPTIONAL
                GopBReference =>
                  'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                ParNumerator => 1,    # OPTIONAL
                TemporalAq => 'DISABLED',  # values: DISABLED, ENABLED; OPTIONAL
                ColorMetadata => 'IGNORE', # values: IGNORE, INSERT; OPTIONAL
                SpatialAq => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                BufSize   => 1,            # OPTIONAL
                FixedAfd  => 'AFD_0000'
                , # values: AFD_0000, AFD_0010, AFD_0011, AFD_0100, AFD_1000, AFD_1001, AFD_1010, AFD_1011, AFD_1101, AFD_1110, AFD_1111; OPTIONAL
                AdaptiveQuantization => 'HIGH'
                ,    # values: HIGH, HIGHER, LOW, MAX, MEDIUM, OFF; OPTIONAL
                Level => 'H264_LEVEL_1'
                , # values: H264_LEVEL_1, H264_LEVEL_1_1, H264_LEVEL_1_2, H264_LEVEL_1_3, H264_LEVEL_2, H264_LEVEL_2_1, H264_LEVEL_2_2, H264_LEVEL_3, H264_LEVEL_3_1, H264_LEVEL_3_2, H264_LEVEL_4, H264_LEVEL_4_1, H264_LEVEL_4_2, H264_LEVEL_5, H264_LEVEL_5_1, H264_LEVEL_5_2, H264_LEVEL_AUTO; OPTIONAL
                GopSizeUnits => 'FRAMES',    # values: FRAMES, SECONDS; OPTIONAL
                FlickerAq => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
                AfdSignaling => 'AUTO',    # values: AUTO, FIXED, NONE; OPTIONAL
                MaxBitrate   => 1,         # min: 1000, ; OPTIONAL
                SceneChangeDetect =>
                  'DISABLED',              # values: DISABLED, ENABLED; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            ScalingBehavior =>
              'DEFAULT',    # values: DEFAULT, STRETCH_TO_OUTPUT; OPTIONAL
            Height => 1,    # OPTIONAL
          },
          ...
        ],
        AvailBlanking => {
          State => 'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
          AvailBlankingImage => {
            Uri           => 'My__string',    # OPTIONAL
            PasswordParam => 'My__string',    # OPTIONAL
            Username      => 'My__string',    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        CaptionDescriptions => [
          {
            Name                => 'My__string',    # OPTIONAL
            CaptionSelectorName => 'My__string',    # OPTIONAL
            LanguageDescription => 'My__string',    # OPTIONAL
            LanguageCode        => 'My__string',    # OPTIONAL
            DestinationSettings => {
              TeletextDestinationSettings => {

              },                                    # OPTIONAL
              BurnInDestinationSettings => {
                FontOpacity       => 1,    # max: 255; OPTIONAL
                BackgroundOpacity => 1,    # max: 255; OPTIONAL
                FontResolution    => 1,    # min: 96, max: 600; OPTIONAL
                ShadowYOffset     => 1,    # OPTIONAL
                ShadowColor => 'BLACK',   # values: BLACK, NONE, WHITE; OPTIONAL
                OutlineSize => 1,         # max: 10; OPTIONAL
                Alignment =>
                  'CENTERED',    # values: CENTERED, LEFT, SMART; OPTIONAL
                YPosition     => 1,    # OPTIONAL
                ShadowOpacity => 1,    # max: 255; OPTIONAL
                BackgroundColor =>
                  'BLACK',             # values: BLACK, NONE, WHITE; OPTIONAL
                FontColor => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                ShadowXOffset => 1,        # OPTIONAL
                OutlineColor  => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                FontSize => 'My__string',    # OPTIONAL
                Font     => {
                  Uri           => 'My__string',    # OPTIONAL
                  PasswordParam => 'My__string',    # OPTIONAL
                  Username      => 'My__string',    # OPTIONAL
                },    # OPTIONAL
                XPosition => 1,    # OPTIONAL
                TeletextGridControl =>
                  'FIXED',         # values: FIXED, SCALED; OPTIONAL
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
                ShadowOpacity => 1,    # max: 255; OPTIONAL
                YPosition     => 1,    # OPTIONAL
                BackgroundColor =>
                  'BLACK',             # values: BLACK, NONE, WHITE; OPTIONAL
                ShadowXOffset => 1,        # OPTIONAL
                FontColor     => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                OutlineColor => 'BLACK'
                ,    # values: BLACK, BLUE, GREEN, RED, WHITE, YELLOW; OPTIONAL
                FontSize => 'My__string',    # OPTIONAL
                Font     => {
                  Uri           => 'My__string',    # OPTIONAL
                  PasswordParam => 'My__string',    # OPTIONAL
                  Username      => 'My__string',    # OPTIONAL
                },    # OPTIONAL
                TeletextGridControl =>
                  'FIXED',    # values: FIXED, SCALED; OPTIONAL
                XPosition         => 1,    # OPTIONAL
                FontOpacity       => 1,    # max: 255; OPTIONAL
                FontResolution    => 1,    # min: 96, max: 600; OPTIONAL
                BackgroundOpacity => 1,    # max: 255; OPTIONAL
                ShadowColor   => 'BLACK', # values: BLACK, NONE, WHITE; OPTIONAL
                ShadowYOffset => 1,       # OPTIONAL
                Alignment =>
                  'CENTERED',    # values: CENTERED, LEFT, SMART; OPTIONAL
                OutlineSize => 1,    # max: 10; OPTIONAL
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
          },
          ...
        ],        # OPTIONAL
        GlobalConfiguration => {
          InputLossBehavior => {
            InputLossImageType => 'COLOR',    # values: COLOR, SLATE; OPTIONAL
            RepeatFrameMsec    => 1,          # max: 1000000; OPTIONAL
            BlackFrameMsec     => 1,          # max: 1000000; OPTIONAL
            InputLossImageColor =>
              'My__stringMin6Max6',           # min: 6, max: 6; OPTIONAL
            InputLossImageSlate => {
              Uri           => 'My__string',    # OPTIONAL
              PasswordParam => 'My__string',    # OPTIONAL
              Username      => 'My__string',    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          OutputTimingSource =>
            'INPUT_CLOCK',    # values: INPUT_CLOCK, SYSTEM_CLOCK; OPTIONAL
          InputEndAction =>
            'NONE',           # values: NONE, SWITCH_AND_LOOP_INPUTS; OPTIONAL
          SupportLowFramerateInputs =>
            'DISABLED',       # values: DISABLED, ENABLED; OPTIONAL
          InitialAudioGain => 1,    # min: -60, max: 60; OPTIONAL
        },    # OPTIONAL
        BlackoutSlate => {
          State => 'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
          NetworkId => 'My__stringMin34Max34',    # min: 34, max: 34; OPTIONAL
          BlackoutSlateImage => {
            Uri           => 'My__string',        # OPTIONAL
            PasswordParam => 'My__string',        # OPTIONAL
            Username      => 'My__string',        # OPTIONAL
          },    # OPTIONAL
          NetworkEndBlackout =>
            'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
          NetworkEndBlackoutImage => {
            Uri           => 'My__string',    # OPTIONAL
            PasswordParam => 'My__string',    # OPTIONAL
            Username      => 'My__string',    # OPTIONAL
          },    # OPTIONAL
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
              WebDeliveryAllowedFlag =>
                'FOLLOW',    # values: FOLLOW, IGNORE; OPTIONAL
              AdAvailOffset => 1,    # min: -1000, max: 1000; OPTIONAL
              NoRegionalBlackoutFlag =>
                'FOLLOW',            # values: FOLLOW, IGNORE; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      InputAttachments => [
        {
          InputSettings => {
            AudioSelectors => [
              {
                Name             => 'My__string',    # OPTIONAL
                SelectorSettings => {
                  AudioLanguageSelection => {
                    LanguageCode => 'My__string',    # OPTIONAL
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
            SourceEndBehavior => 'CONTINUE',  # values: CONTINUE, LOOP; OPTIONAL
            DenoiseFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
            DeblockFilter => 'DISABLED',   # values: DISABLED, ENABLED; OPTIONAL
            InputFilter    => 'AUTO', # values: AUTO, DISABLED, FORCED; OPTIONAL
            FilterStrength => 1,      # min: 1, max: 5; OPTIONAL
            NetworkInputSettings => {
              HlsInputSettings => {
                BufferSegments => 1,    # OPTIONAL
                RetryInterval  => 1,    # OPTIONAL
                Bandwidth      => 1,    # OPTIONAL
                Retries        => 1,    # OPTIONAL
              },    # OPTIONAL
              ServerValidation => 'CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME'
              , # values: CHECK_CRYPTOGRAPHY_AND_VALIDATE_NAME, CHECK_CRYPTOGRAPHY_ONLY; OPTIONAL
            },    # OPTIONAL
            CaptionSelectors => [
              {
                Name             => 'My__string',    # OPTIONAL
                SelectorSettings => {
                  DvbSubSourceSettings => {
                    Pid => 1,                        # min: 1, ; OPTIONAL
                  },    # OPTIONAL
                  Scte20SourceSettings => {
                    Source608ChannelNumber => 1,    # min: 1, max: 4
                    Convert608To708 =>
                      'DISABLED',    # values: DISABLED, UPCONVERT; OPTIONAL
                  },    # OPTIONAL
                  TeletextSourceSettings => {
                    PageNumber => 'My__string',    # OPTIONAL
                  },    # OPTIONAL
                  EmbeddedSourceSettings => {
                    Source608TrackNumber => 1,    # min: 1, max: 5; OPTIONAL
                    Scte20Detection => 'AUTO',    # values: AUTO, OFF; OPTIONAL
                    Convert608To708 =>
                      'DISABLED',    # values: DISABLED, UPCONVERT; OPTIONAL
                    Source608ChannelNumber => 1,    # min: 1, max: 4
                  },    # OPTIONAL
                  AribSourceSettings => {

                  },    # OPTIONAL
                  Scte27SourceSettings => {
                    Pid => 1,    # min: 1, ; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                LanguageCode => 'My__string',    # OPTIONAL
              },
              ...
            ],                                   # OPTIONAL
            VideoSelector => {
              ColorSpaceUsage => 'FALLBACK', # values: FALLBACK, FORCE; OPTIONAL
              SelectorSettings => {
                VideoSelectorPid => {
                  Pid => 1,                  # max: 8191
                },    # OPTIONAL
                VideoSelectorProgramId => {
                  ProgramId => 1,    # max: 65536
                },    # OPTIONAL
              },    # OPTIONAL
              ColorSpace =>
                'FOLLOW',    # values: FOLLOW, REC_601, REC_709; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          InputId => 'My__string',    # OPTIONAL
        },
        ...
      ],                              # OPTIONAL
      InputSpecification => {
        Codec          => 'MPEG2',        # values: MPEG2, AVC, HEVC; OPTIONAL
        MaximumBitrate => 'MAX_10_MBPS'
        ,    # values: MAX_10_MBPS, MAX_20_MBPS, MAX_50_MBPS; OPTIONAL
        Resolution => 'SD',    # values: SD, HD, UHD; OPTIONAL
      },    # OPTIONAL
      LogLevel  => 'ERROR',         # OPTIONAL
      Name      => 'My__string',    # OPTIONAL
      RequestId => 'My__string',    # OPTIONAL
      Reserved  => 'My__string',    # OPTIONAL
      RoleArn   => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Name               = $CreateChannelResponse->Name;
    my $InputAttachments   = $CreateChannelResponse->InputAttachments;
    my $RequestId          = $CreateChannelResponse->RequestId;
    my $EncoderSettings    = $CreateChannelResponse->EncoderSettings;
    my $Destinations       = $CreateChannelResponse->Destinations;
    my $LogLevel           = $CreateChannelResponse->LogLevel;
    my $Reserved           = $CreateChannelResponse->Reserved;
    my $RoleArn            = $CreateChannelResponse->RoleArn;
    my $InputSpecification = $CreateChannelResponse->InputSpecification;

    # Returns a L<Paws::MediaLive::CreateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/CreateChannel>

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::MediaLive::OutputDestination>]





=head2 EncoderSettings => L<Paws::MediaLive::EncoderSettings>





=head2 InputAttachments => ArrayRef[L<Paws::MediaLive::InputAttachment>]

List of input attachments for channel.



=head2 InputSpecification => L<Paws::MediaLive::InputSpecification>

Specification of input for this channel (max. bitrate, resolution,
codec, etc.)



=head2 LogLevel => Str

The log level to write to CloudWatch Logs.

Valid values are: C<"ERROR">, C<"WARNING">, C<"INFO">, C<"DEBUG">, C<"DISABLED">

=head2 Name => Str

Name of channel.



=head2 RequestId => Str

Unique request ID to be specified. This is needed to prevent retries
from creating multiple resources.



=head2 Reserved => Str

Deprecated field that's only usable by whitelisted customers.



=head2 RoleArn => Str

An optional Amazon Resource Name (ARN) of the role to assume when
running the Channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannel in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

