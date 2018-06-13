
package Paws::MediaConvert::CreateJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has JobTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobTemplate');
  has Queue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queue');
  has Role => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'role', required => 1);
  has Settings => (is => 'ro', isa => 'Paws::MediaConvert::JobSettings', traits => ['NameInRequest'], request_name => 'settings', required => 1);
  has UserMetadata => (is => 'ro', isa => 'Paws::MediaConvert::__mapOf__string', traits => ['NameInRequest'], request_name => 'userMetadata');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::CreateJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CreateJob - Arguments for method CreateJob on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $CreateJobResponse = $mediaconvert->CreateJob(
      Role     => 'My__string',
      Settings => {
        OutputGroups => [
          {
            OutputGroupSettings => {
              Type => 'HLS_GROUP_SETTINGS'
              , # values: HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS, CMAF_GROUP_SETTINGS
              FileGroupSettings => {
                Destination => 'My__stringPatternS3',    # OPTIONAL
              },    # OPTIONAL
              MsSmoothGroupSettings => {
                FragmentLength => 1,    # min: 1, max: 2147483647; OPTIONAL
                Encryption     => {
                  SpekeKeyProvider => {
                    Url       => 'My__stringPatternHttps',
                    SystemIds => [
                      'My__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12',
                      ...
                    ],
                    ResourceId => 'My__string',

                  },

                },                      # OPTIONAL
                AudioDeduplication => 'COMBINE_DUPLICATE_STREAMS'
                ,    # values: COMBINE_DUPLICATE_STREAMS, NONE; OPTIONAL
                ManifestEncoding => 'UTF8',    # values: UTF8, UTF16; OPTIONAL
                Destination => 'My__stringPatternS3',    # OPTIONAL
              },    # OPTIONAL
              HlsGroupSettings => {
                SegmentLength    => 1,    # min: 1, max: 2147483647; OPTIONAL
                MinSegmentLength => 1,    # max: 2147483647; OPTIONAL
                StreamInfResolution =>
                  'INCLUDE',              # values: INCLUDE, EXCLUDE; OPTIONAL
                CaptionLanguageSetting =>
                  'INSERT',               # values: INSERT, OMIT, NONE; OPTIONAL
                CodecSpecification =>
                  'RFC_6381',             # values: RFC_6381, RFC_4281; OPTIONAL
                Encryption => {
                  Type => 'SPEKE',        # values: SPEKE, STATIC_KEY
                  ConstantInitializationVector =>
                    'My__stringMin32Max32Pattern09aFAF32'
                  ,                       # min: 32, max: 32; OPTIONAL
                  InitializationVectorInManifest =>
                    'INCLUDE',            # values: INCLUDE, EXCLUDE; OPTIONAL
                  SpekeKeyProvider => {
                    Url       => 'My__stringPatternHttps',
                    SystemIds => [
                      'My__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12',
                      ...
                    ],
                    ResourceId => 'My__string',

                  },
                  EncryptionMethod =>
                    'AES128',             # values: AES128, SAMPLE_AES; OPTIONAL
                  StaticKeyProvider => {
                    StaticKeyValue    => 'My__stringPatternAZaZ0932',
                    Url               => 'My__string',
                    KeyFormatVersions => 'My__stringPatternDD',       # OPTIONAL
                    KeyFormat =>
                      'My__stringPatternIdentityAZaZ26AZaZ09163',     # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                TimedMetadataId3Period => 1, # min: -2147483648, max: 2147483647
                CaptionLanguageMappings => [
                  {
                    CaptionChannel => 1,     # min: -2147483648, max: 2147483647
                    LanguageDescription => 'My__string',
                    LanguageCode        => 'ENG'
                    , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG; OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                OutputSelection => 'MANIFESTS_AND_SEGMENTS'
                ,     # values: MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY; OPTIONAL
                TimestampDeltaMilliseconds =>
                  1,    # min: -2147483648, max: 2147483647
                SegmentsPerSubdirectory =>
                  1,    # min: 1, max: 2147483647; OPTIONAL
                BaseUrl => 'My__string',
                ProgramDateTime =>
                  'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                SegmentControl => 'SINGLE_FILE'
                ,               # values: SINGLE_FILE, SEGMENTED_FILES; OPTIONAL
                ManifestDurationFormat =>
                  'FLOATING_POINT',  # values: FLOATING_POINT, INTEGER; OPTIONAL
                DirectoryStructure => 'SINGLE_DIRECTORY'
                ,  # values: SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM; OPTIONAL
                Destination => 'My__stringPatternS3',    # OPTIONAL
                ClientCache => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                ManifestCompression => 'GZIP',    # values: GZIP, NONE; OPTIONAL
                AdMarkers           => [
                  'ELEMENTAL', ...    # values: ELEMENTAL, ELEMENTAL_SCTE35
                ],                    # OPTIONAL
                ProgramDateTimePeriod => 1,    # max: 3600; OPTIONAL
                TimedMetadataId3Frame =>
                  'NONE',    # values: NONE, PRIV, TDRL; OPTIONAL
              },    # OPTIONAL
              CmafGroupSettings => {
                FragmentLength => 1,    # min: 1, max: 2147483647; OPTIONAL
                SegmentLength  => 1,    # min: 1, max: 2147483647; OPTIONAL
                BaseUrl => 'My__string',
                WriteHlsManifest =>
                  'DISABLED',           # values: DISABLED, ENABLED; OPTIONAL
                WriteDashManifest =>
                  'DISABLED',           # values: DISABLED, ENABLED; OPTIONAL
                Encryption => {
                  Type              => 'STATIC_KEY',    # values: STATIC_KEY
                  StaticKeyProvider => {
                    StaticKeyValue    => 'My__stringPatternAZaZ0932',
                    Url               => 'My__string',
                    KeyFormatVersions => 'My__stringPatternDD',       # OPTIONAL
                    KeyFormat =>
                      'My__stringPatternIdentityAZaZ26AZaZ09163',     # OPTIONAL
                  },    # OPTIONAL
                  EncryptionMethod =>
                    'SAMPLE_AES',    # values: SAMPLE_AES; OPTIONAL
                  InitializationVectorInManifest =>
                    'INCLUDE',       # values: INCLUDE, EXCLUDE; OPTIONAL
                  ConstantInitializationVector =>
                    'My__stringMin32Max32Pattern09aFAF32'
                  ,                  # min: 32, max: 32; OPTIONAL
                },    # OPTIONAL
                CodecSpecification =>
                  'RFC_6381',    # values: RFC_6381, RFC_4281; OPTIONAL
                StreamInfResolution =>
                  'INCLUDE',     # values: INCLUDE, EXCLUDE; OPTIONAL
                ManifestCompression => 'GZIP',    # values: GZIP, NONE; OPTIONAL
                ClientCache => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                ManifestDurationFormat =>
                  'FLOATING_POINT',  # values: FLOATING_POINT, INTEGER; OPTIONAL
                Destination => 'My__stringPatternS3',    # OPTIONAL
                MinBufferTime  => 1,              # max: 2147483647; OPTIONAL
                SegmentControl => 'SINGLE_FILE'
                ,    # values: SINGLE_FILE, SEGMENTED_FILES; OPTIONAL
              },    # OPTIONAL
              DashIsoGroupSettings => {
                FragmentLength => 1,    # min: 1, max: 2147483647; OPTIONAL
                SegmentLength  => 1,    # min: 1, max: 2147483647; OPTIONAL
                BaseUrl    => 'My__string',
                Encryption => {
                  SpekeKeyProvider => {
                    Url       => 'My__stringPatternHttps',
                    SystemIds => [
                      'My__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12',
                      ...
                    ],
                    ResourceId => 'My__string',

                  },

                },    # OPTIONAL
                HbbtvCompliance =>
                  'HBBTV_1_5',    # values: HBBTV_1_5, NONE; OPTIONAL
                Destination    => 'My__stringPatternS3',    # OPTIONAL
                SegmentControl => 'SINGLE_FILE'
                ,    # values: SINGLE_FILE, SEGMENTED_FILES; OPTIONAL
                MinBufferTime => 1,    # max: 2147483647; OPTIONAL
              },    # OPTIONAL
            },
            Outputs => [
              {
                AudioDescriptions => [
                  {
                    CodecSettings => {
                      Codec => 'AAC'
                      ,    # values: AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH
                      Mp2Settings => {
                        Bitrate    => 1,    # min: 32000, max: 384000; OPTIONAL
                        SampleRate => 1,    # min: 32000, max: 48000; OPTIONAL
                        Channels   => 1,    # min: 1, max: 2; OPTIONAL
                      },    # OPTIONAL
                      Ac3Settings => {
                        LfeFilter =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        MetadataControl => 'FOLLOW_INPUT'
                        ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                        Bitrate => 1,    # min: 64000, max: 640000; OPTIONAL
                        BitstreamMode => 'COMPLETE_MAIN'
                        , # values: COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER; OPTIONAL
                        DynamicRangeCompressionProfile => 'FILM_STANDARD'
                        ,    # values: FILM_STANDARD, NONE; OPTIONAL
                        SampleRate => 1,    # min: 48000, max: 48000; OPTIONAL
                        Dialnorm   => 1,    # min: 1, max: 31; OPTIONAL
                        CodingMode => 'CODING_MODE_1_0'
                        , # values: CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE; OPTIONAL
                      },    # OPTIONAL
                      WavSettings => {
                        Format     => 'RIFF', # values: RIFF, RF64; OPTIONAL
                        SampleRate => 1,      # min: 8000, max: 192000; OPTIONAL
                        BitDepth   => 1,      # min: 16, max: 24; OPTIONAL
                        Channels   => 1,      # min: 1, max: 8; OPTIONAL
                      },    # OPTIONAL
                      AiffSettings => {
                        Channels   => 1,    # min: 1, max: 2; OPTIONAL
                        BitDepth   => 1,    # min: 16, max: 24; OPTIONAL
                        SampleRate => 1,    # min: 8000, max: 192000; OPTIONAL
                      },    # OPTIONAL
                      AacSettings => {
                        SampleRate => 1,                 # min: 8000, max: 96000
                        CodingMode => 'AD_RECEIVER_MIX'
                        , # values: AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1
                        RawFormat =>
                          'LATM_LOAS',    # values: LATM_LOAS, NONE; OPTIONAL
                        Specification =>
                          'MPEG2',        # values: MPEG2, MPEG4; OPTIONAL
                        AudioDescriptionBroadcasterMix => 'BROADCASTER_MIXED_AD'
                        ,    # values: BROADCASTER_MIXED_AD, NORMAL; OPTIONAL
                        VbrQuality => 'LOW'
                        , # values: LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH; OPTIONAL
                        RateControlMode => 'CBR',   # values: CBR, VBR; OPTIONAL
                        CodecProfile => 'LC', # values: LC, HEV1, HEV2; OPTIONAL
                        Bitrate => 1,    # min: 6000, max: 1024000; OPTIONAL
                      },    # OPTIONAL
                      Eac3Settings => {
                        DynamicRangeCompressionLine => 'NONE'
                        , # values: NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH; OPTIONAL
                        SurroundExMode => 'NOT_INDICATED'
                        ,   # values: NOT_INDICATED, ENABLED, DISABLED; OPTIONAL
                        LfeFilter =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        StereoDownmix => 'NOT_INDICATED'
                        ,  # values: NOT_INDICATED, LO_RO, LT_RT, DPL2; OPTIONAL
                        AttenuationControl => 'ATTENUATE_3_DB'
                        ,    # values: ATTENUATE_3_DB, NONE; OPTIONAL
                        PhaseControl => 'SHIFT_90_DEGREES'
                        ,    # values: SHIFT_90_DEGREES, NO_SHIFT; OPTIONAL
                        DynamicRangeCompressionRf => 'NONE'
                        , # values: NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH; OPTIONAL
                        PassthroughControl => 'WHEN_POSSIBLE'
                        ,    # values: WHEN_POSSIBLE, NO_PASSTHROUGH; OPTIONAL
                        SurroundMode => 'NOT_INDICATED'
                        ,   # values: NOT_INDICATED, ENABLED, DISABLED; OPTIONAL
                        LoRoSurroundMixLevel => 1,    # OPTIONAL
                        LfeControl => 'LFE',    # values: LFE, NO_LFE; OPTIONAL
                        DcFilter =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        CodingMode => 'CODING_MODE_1_0'
                        , # values: CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2; OPTIONAL
                        Bitrate => 1,    # min: 64000, max: 640000; OPTIONAL
                        BitstreamMode => 'COMPLETE_MAIN'
                        , # values: COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED; OPTIONAL
                        MetadataControl => 'FOLLOW_INPUT'
                        ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                        LtRtSurroundMixLevel => 1,   # OPTIONAL
                        LoRoCenterMixLevel   => 1,   # OPTIONAL
                        Dialnorm             => 1,   # min: 1, max: 31; OPTIONAL
                        SampleRate => 1,    # min: 48000, max: 48000; OPTIONAL
                        LtRtCenterMixLevel => 1,    # OPTIONAL
                      },    # OPTIONAL
                    },
                    RemixSettings => {
                      ChannelsOut    => 1,    # min: 1, max: 8; OPTIONAL
                      ChannelsIn     => 1,    # min: 1, max: 16
                      ChannelMapping => {
                        OutputChannels => [
                          {
                            InputChannels => [
                              1, ...          # min: -60, max: 6
                            ],

                          },
                          ...
                        ],

                      },

                    },    # OPTIONAL
                    LanguageCode => 'ENG'
                    , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG; OPTIONAL
                    AudioTypeControl => 'FOLLOW_INPUT'
                    ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                    AudioType           => 1,               # max: 255
                    LanguageCodeControl => 'FOLLOW_INPUT'
                    ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                    AudioNormalizationSettings => {
                      PeakCalculation =>
                        'TRUE_PEAK',    # values: TRUE_PEAK, NONE; OPTIONAL
                      TargetLkfs          => 1,    # OPTIONAL
                      CorrectionGateLevel => 1,    # min: -70, ; OPTIONAL
                      AlgorithmControl => 'CORRECT_AUDIO'
                      ,    # values: CORRECT_AUDIO, MEASURE_ONLY; OPTIONAL
                      Algorithm => 'ITU_BS_1770_1'
                      ,    # values: ITU_BS_1770_1, ITU_BS_1770_2; OPTIONAL
                      LoudnessLogging =>
                        'LOG',    # values: LOG, DONT_LOG; OPTIONAL
                    },    # OPTIONAL
                    AudioSourceName => 'My__string',
                    StreamName      => 'My__stringPatternWS',    # OPTIONAL
                  },
                  ...
                ],                                               # OPTIONAL
                NameModifier        => 'My__stringMin1',    # min: 1, ; OPTIONAL
                CaptionDescriptions => [
                  {
                    CaptionSelectorName =>
                      'My__stringMin1',                     # min: 1, ; OPTIONAL
                    DestinationSettings => {
                      DestinationType => 'BURN_IN'
                      , # values: BURN_IN, DVB_SUB, EMBEDDED, SCC, SRT, TELETEXT, TTML, WEBVTT
                      TeletextDestinationSettings => {
                        PageNumber => 'My__stringMin3Max3Pattern1809aFAF09aEAE'
                        ,    # min: 3, max: 3; OPTIONAL
                      },    # OPTIONAL
                      SccDestinationSettings => {
                        Framerate => 'FRAMERATE_23_97'
                        , # values: FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME; OPTIONAL
                      },    # OPTIONAL
                      TtmlDestinationSettings => {
                        StylePassthrough =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                      },    # OPTIONAL
                      BurninDestinationSettings => {
                        OutlineColor => 'BLACK'
                        ,    # values: BLACK, WHITE, YELLOW, RED, GREEN, BLUE
                        OutlineSize => 1,             # max: 10
                        Alignment   => 'CENTERED',    # values: CENTERED, LEFT
                        FontOpacity => 1,             # max: 255
                        FontSize    => 1,             # max: 96; OPTIONAL
                        FontColor   => 'WHITE'
                        , # values: WHITE, BLACK, YELLOW, RED, GREEN, BLUE; OPTIONAL
                        ShadowXOffset => 1,  # min: -2147483648, max: 2147483647
                        BackgroundColor =>
                          'NONE',    # values: NONE, BLACK, WHITE; OPTIONAL
                        ShadowOpacity => 1,    # max: 255
                        YPosition     => 1,    # max: 2147483647; OPTIONAL
                        XPosition     => 1,    # max: 2147483647; OPTIONAL
                        TeletextSpacing => 'FIXED_GRID'
                        ,    # values: FIXED_GRID, PROPORTIONAL; OPTIONAL
                        ShadowColor =>
                          'NONE',    # values: NONE, BLACK, WHITE; OPTIONAL
                        ShadowYOffset  => 1, # min: -2147483648, max: 2147483647
                        FontResolution => 1, # min: 96, max: 600; OPTIONAL
                        BackgroundOpacity => 1,    # max: 255
                      },    # OPTIONAL
                      DvbSubDestinationSettings => {
                        OutlineColor => 'BLACK'
                        ,    # values: BLACK, WHITE, YELLOW, RED, GREEN, BLUE
                        OutlineSize => 1,             # max: 10
                        Alignment   => 'CENTERED',    # values: CENTERED, LEFT
                        FontOpacity => 1,             # max: 255
                        ShadowYOffset => 1,  # min: -2147483648, max: 2147483647
                        ShadowColor =>
                          'NONE',    # values: NONE, BLACK, WHITE; OPTIONAL
                        BackgroundOpacity => 1,    # max: 255
                        FontResolution    => 1,    # min: 96, max: 600; OPTIONAL
                        BackgroundColor =>
                          'NONE',    # values: NONE, BLACK, WHITE; OPTIONAL
                        YPosition     => 1,  # max: 2147483647; OPTIONAL
                        ShadowOpacity => 1,  # max: 255
                        FontSize      => 1,  # max: 96; OPTIONAL
                        ShadowXOffset => 1,  # min: -2147483648, max: 2147483647
                        FontColor => 'WHITE'
                        , # values: WHITE, BLACK, YELLOW, RED, GREEN, BLUE; OPTIONAL
                        XPosition => 1,    # max: 2147483647; OPTIONAL
                        TeletextSpacing => 'FIXED_GRID'
                        ,    # values: FIXED_GRID, PROPORTIONAL; OPTIONAL
                      },    # OPTIONAL
                    },
                    LanguageDescription => 'My__string',
                    LanguageCode        => 'ENG'
                    , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG; OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                Extension         => 'My__string',
                Preset            => 'My__stringMin0',    # OPTIONAL
                ContainerSettings => {
                  Container => 'F4V'
                  , # values: F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW
                  F4vSettings => {
                    MoovPlacement => 'PROGRESSIVE_DOWNLOAD'
                    ,    # values: PROGRESSIVE_DOWNLOAD, NORMAL; OPTIONAL
                  },    # OPTIONAL
                  M2tsSettings => {
                    PcrControl => 'PCR_EVERY_PES_PACKET'
                    , # values: PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD; OPTIONAL
                    PatInterval    => 1,    # max: 1000; OPTIONAL
                    Scte35Pid      => 1,    # min: 32, max: 8182; OPTIONAL
                    DvbTdtSettings => {
                      TdtInterval => 1,     # min: 1000, max: 30000

                    },    # OPTIONAL
                    TransportStreamId => 1,    # max: 65535; OPTIONAL
                    PmtInterval       => 1,    # max: 1000; OPTIONAL
                    PmtPid            => 1,    # min: 32, max: 8182; OPTIONAL
                    EbpPlacement => 'VIDEO_AND_AUDIO_PIDS'
                    ,    # values: VIDEO_AND_AUDIO_PIDS, VIDEO_PID; OPTIONAL
                    BufferModel =>
                      'MULTIPLEX',    # values: MULTIPLEX, NONE; OPTIONAL
                    EbpAudioInterval => 'VIDEO_AND_FIXED_INTERVALS'
                    , # values: VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL; OPTIONAL
                    PrivateMetadataPid => 1,      # min: 32, max: 8182; OPTIONAL
                    RateMode           => 'VBR',  # values: VBR, CBR; OPTIONAL
                    ProgramNumber      => 1,      # max: 65535; OPTIONAL
                    SegmentationStyle => 'MAINTAIN_CADENCE'
                    ,    # values: MAINTAIN_CADENCE, RESET_CADENCE; OPTIONAL
                    Scte35Source =>
                      'PASSTHROUGH',    # values: PASSTHROUGH, NONE; OPTIONAL
                    DvbSubPids => [
                      1, ...            # min: 32, max: 8182; OPTIONAL
                    ],                  # OPTIONAL
                    SegmentationMarkers => 'NONE'
                    , # values: NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY; OPTIONAL
                    SegmentationTime => 1,    # OPTIONAL
                    MaxPcrInterval   => 1,    # max: 500; OPTIONAL
                    Bitrate          => 1,    # max: 2147483647; OPTIONAL
                    DvbSdtSettings   => {
                      ServiceName =>
                        'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                      OutputSdt => 'SDT_FOLLOW'
                      , # values: SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE; OPTIONAL
                      SdtInterval => 1,    # min: 25, max: 2000; OPTIONAL
                      ServiceProviderName =>
                        'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                    },    # OPTIONAL
                    AudioBufferModel => 'DVB',    # values: DVB, ATSC; OPTIONAL
                    TimedMetadataPid => 1,        # min: 32, max: 8182; OPTIONAL
                    EsRateInPes =>
                      'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                    AudioPids => [
                      1, ...        # min: 32, max: 8182; OPTIONAL
                    ],              # OPTIONAL
                    DvbNitSettings => {
                      NetworkName =>
                        'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                      NetworkId   => 1,            # max: 65535; OPTIONAL
                      NitInterval => 1,            # min: 25, max: 10000

                    },    # OPTIONAL
                    NullPacketBitrate => 1,    # OPTIONAL
                    PcrPid            => 1,    # min: 32, max: 8182; OPTIONAL
                    VideoPid          => 1,    # min: 32, max: 8182; OPTIONAL
                    MinEbpInterval    => 1,    # max: 10000; OPTIONAL
                    NielsenId3     => 'INSERT', # values: INSERT, NONE; OPTIONAL
                    DvbTeletextPid => 1,        # min: 32, max: 8182; OPTIONAL
                    AudioFramesPerPes => 1,     # max: 2147483647; OPTIONAL
                    FragmentTime      => 1,     # OPTIONAL
                  },    # OPTIONAL
                  M3u8Settings => {
                    TransportStreamId  => 1,    # max: 65535; OPTIONAL
                    PmtPid             => 1,    # min: 32, max: 8182; OPTIONAL
                    PmtInterval        => 1,    # max: 1000; OPTIONAL
                    PrivateMetadataPid => 1,    # min: 32, max: 8182; OPTIONAL
                    PcrControl => 'PCR_EVERY_PES_PACKET'
                    , # values: PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD; OPTIONAL
                    Scte35Pid   => 1,           # min: 32, max: 8182; OPTIONAL
                    PatInterval => 1,           # max: 1000; OPTIONAL
                    PcrPid      => 1,           # min: 32, max: 8182; OPTIONAL
                    VideoPid    => 1,           # min: 32, max: 8182; OPTIONAL
                    NielsenId3  => 'INSERT',    # values: INSERT, NONE; OPTIONAL
                    AudioFramesPerPes => 1,     # max: 2147483647; OPTIONAL
                    ProgramNumber     => 1,     # max: 65535; OPTIONAL
                    Scte35Source =>
                      'PASSTHROUGH',    # values: PASSTHROUGH, NONE; OPTIONAL
                    TimedMetadata =>
                      'PASSTHROUGH',    # values: PASSTHROUGH, NONE; OPTIONAL
                    AudioPids => [
                      1, ...            # min: 32, max: 8182; OPTIONAL
                    ],                  # OPTIONAL
                    TimedMetadataPid => 1,    # min: 32, max: 8182; OPTIONAL
                  },    # OPTIONAL
                  MovSettings => {
                    Mpeg2FourCCControl =>
                      'XDCAM',    # values: XDCAM, MPEG; OPTIONAL
                    PaddingControl => 'OMNEON', # values: OMNEON, NONE; OPTIONAL
                    CslgAtom => 'INCLUDE',  # values: INCLUDE, EXCLUDE; OPTIONAL
                    ClapAtom => 'INCLUDE',  # values: INCLUDE, EXCLUDE; OPTIONAL
                    Reference => 'SELF_CONTAINED'
                    ,    # values: SELF_CONTAINED, EXTERNAL; OPTIONAL
                  },    # OPTIONAL
                  Mp4Settings => {
                    MoovPlacement => 'PROGRESSIVE_DOWNLOAD'
                    ,    # values: PROGRESSIVE_DOWNLOAD, NORMAL; OPTIONAL
                    Mp4MajorBrand => 'My__string',
                    FreeSpaceBox =>
                      'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                    CslgAtom => 'INCLUDE',  # values: INCLUDE, EXCLUDE; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                VideoDescription => {
                  CodecSettings => {
                    Codec => 'FRAME_CAPTURE'
                    ,    # values: FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES
                    Mpeg2Settings => {
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      TemporalAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      MinIInterval     => 1,       # max: 30; OPTIONAL
                      IntraDcPrecision => 'AUTO'
                      , # values: AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11; OPTIONAL
                      GopClosedCadence => 1,    # max: 2147483647; OPTIONAL
                      Bitrate => 1,    # min: 1000, max: 288000000; OPTIONAL
                      Syntax => 'DEFAULT',    # values: DEFAULT, D_10; OPTIONAL
                      CodecProfile =>
                        'MAIN',    # values: MAIN, PROFILE_422; OPTIONAL
                      FramerateNumerator => 1,   # min: 24, max: 60000; OPTIONAL
                      QualityTuningLevel => 'SINGLE_PASS'
                      ,    # values: SINGLE_PASS, MULTI_PASS; OPTIONAL
                      GopSize         => 1,        # OPTIONAL
                      RateControlMode => 'VBR',    # values: VBR, CBR; OPTIONAL
                      Softness        => 1,        # max: 128; OPTIONAL
                      SpatialAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      MaxBitrate => 1, # min: 1000, max: 300000000; OPTIONAL
                      SceneChangeDetect =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      GopSizeUnits =>
                        'FRAMES',      # values: FRAMES, SECONDS; OPTIONAL
                      NumberBFramesBetweenReferenceFrames =>
                        1,             # max: 7; OPTIONAL
                      HrdBufferSize => 1,    # max: 47185920; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      ,    # values: DUPLICATE_DROP, INTERPOLATE; OPTIONAL
                      CodecLevel => 'AUTO'
                      ,    # values: AUTO, LOW, MAIN, HIGH1440, HIGH; OPTIONAL
                      HrdBufferInitialFillPercentage => 1,  # max: 100; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      ParDenominator => 1,   # min: 1, max: 2147483647; OPTIONAL
                      InterlaceMode => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      FramerateDenominator => 1,   # min: 1, max: 1001; OPTIONAL
                      Telecine => 'NONE',   # values: NONE, SOFT, HARD; OPTIONAL
                      ParNumerator => 1,    # min: 1, max: 2147483647; OPTIONAL
                      AdaptiveQuantization =>
                        'OFF',    # values: OFF, LOW, MEDIUM, HIGH; OPTIONAL
                    },    # OPTIONAL
                    H264Settings => {
                      AdaptiveQuantization => 'OFF'
                      ,  # values: OFF, LOW, MEDIUM, HIGH, HIGHER, MAX; OPTIONAL
                      Telecine => 'NONE',   # values: NONE, SOFT, HARD; OPTIONAL
                      ParNumerator => 1,    # min: 1, max: 2147483647; OPTIONAL
                      FramerateDenominator =>
                        1,                  # min: 1, max: 2147483647; OPTIONAL
                      GopBReference =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      InterlaceMode => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      Slices => 1,    # min: 1, max: 32; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      ParDenominator => 1,   # min: 1, max: 2147483647; OPTIONAL
                      HrdBufferInitialFillPercentage => 1,  # max: 100; OPTIONAL
                      FlickerAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      ,    # values: DUPLICATE_DROP, INTERPOLATE; OPTIONAL
                      CodecLevel => 'AUTO'
                      , # values: AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2; OPTIONAL
                      GopSizeUnits =>
                        'FRAMES',    # values: FRAMES, SECONDS; OPTIONAL
                      NumberBFramesBetweenReferenceFrames =>
                        1,           # max: 7; OPTIONAL
                      HrdBufferSize => 1,    # max: 1152000000; OPTIONAL
                      SceneChangeDetect =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      MaxBitrate => 1, # min: 1000, max: 1152000000; OPTIONAL
                      FieldEncoding =>
                        'PAFF',        # values: PAFF, FORCE_FIELD; OPTIONAL
                      RateControlMode => 'VBR',    # values: VBR, CBR; OPTIONAL
                      Softness        => 1,        # max: 128; OPTIONAL
                      SpatialAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      GopSize => 1,    # OPTIONAL
                      RepeatPps =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      QualityTuningLevel => 'SINGLE_PASS'
                      , # values: SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ; OPTIONAL
                      CodecProfile => 'BASELINE'
                      , # values: BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN; OPTIONAL
                      FramerateNumerator =>
                        1,    # min: 1, max: 2147483647; OPTIONAL
                      UnregisteredSeiTimecode =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Bitrate => 1,    # min: 1000, max: 1152000000; OPTIONAL
                      Syntax => 'DEFAULT',   # values: DEFAULT, RP2027; OPTIONAL
                      GopClosedCadence => 1, # max: 2147483647; OPTIONAL
                      MinIInterval     => 1, # max: 30; OPTIONAL
                      TemporalAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      NumberReferenceFrames => 1,    # min: 1, max: 6; OPTIONAL
                      EntropyEncoding =>
                        'CABAC',    # values: CABAC, CAVLC; OPTIONAL
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                    },    # OPTIONAL
                    FrameCaptureSettings => {
                      MaxCaptures => 1,    # min: 1, max: 10000000; OPTIONAL
                      FramerateDenominator =>
                        1,                 # min: 1, max: 2147483647; OPTIONAL
                      Quality => 1,        # min: 1, max: 100; OPTIONAL
                      FramerateNumerator =>
                        1,                 # min: 1, max: 2147483647; OPTIONAL
                    },    # OPTIONAL
                    ProresSettings => {
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      ,    # values: DUPLICATE_DROP, INTERPOLATE; OPTIONAL
                      FramerateDenominator =>
                        1,    # min: 1, max: 2147483647; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      ParDenominator => 1,   # min: 1, max: 2147483647; OPTIONAL
                      InterlaceMode => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      Telecine => 'NONE',    # values: NONE, HARD; OPTIONAL
                      ParNumerator => 1,     # min: 1, max: 2147483647; OPTIONAL
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      CodecProfile => 'APPLE_PRORES_422'
                      , # values: APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY; OPTIONAL
                      FramerateNumerator =>
                        1,    # min: 1, max: 2147483647; OPTIONAL
                    },    # OPTIONAL
                    H265Settings => {
                      Tiles => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                      HrdBufferInitialFillPercentage => 1,  # max: 100; OPTIONAL
                      CodecLevel => 'AUTO'
                      , # values: AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      ,    # values: DUPLICATE_DROP, INTERPOLATE; OPTIONAL
                      FlickerAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      SceneChangeDetect =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      MaxBitrate    => 1, # min: 1000, max: 1466400000; OPTIONAL
                      HrdBufferSize => 1, # max: 1466400000; OPTIONAL
                      NumberBFramesBetweenReferenceFrames =>
                        1,                # max: 7; OPTIONAL
                      GopSizeUnits =>
                        'FRAMES',         # values: FRAMES, SECONDS; OPTIONAL
                      SampleAdaptiveOffsetFilterMode =>
                        'DEFAULT',    # values: DEFAULT, ADAPTIVE, OFF; OPTIONAL
                      WriteMp4PackagingType =>
                        'HVC1',       # values: HVC1, HEV1; OPTIONAL
                      AdaptiveQuantization => 'OFF'
                      ,  # values: OFF, LOW, MEDIUM, HIGH, HIGHER, MAX; OPTIONAL
                      AlternateTransferFunctionSei =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      ParNumerator => 1,    # min: 1, max: 2147483647; OPTIONAL
                      Telecine => 'NONE',   # values: NONE, SOFT, HARD; OPTIONAL
                      GopBReference =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      FramerateDenominator =>
                        1,             # min: 1, max: 2147483647; OPTIONAL
                      ParDenominator => 1,   # min: 1, max: 2147483647; OPTIONAL
                      Slices         => 1,   # min: 1, max: 32; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      InterlaceMode => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      Bitrate => 1,    # min: 1000, max: 1466400000; OPTIONAL
                      TemporalIds =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      UnregisteredSeiTimecode =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      FramerateNumerator =>
                        1,             # min: 1, max: 2147483647; OPTIONAL
                      CodecProfile => 'MAIN_MAIN'
                      , # values: MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH; OPTIONAL
                      GopClosedCadence => 1,    # max: 2147483647; OPTIONAL
                      TemporalAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      MinIInterval => 1,    # max: 30; OPTIONAL
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      NumberReferenceFrames => 1,    # min: 1, max: 6; OPTIONAL
                      SpatialAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      RateControlMode => 'VBR',    # values: VBR, CBR; OPTIONAL
                      GopSize         => 1,        # OPTIONAL
                      QualityTuningLevel => 'SINGLE_PASS'
                      , # values: SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ; OPTIONAL
                    },    # OPTIONAL
                  },
                  RespondToAfd =>
                    'NONE',    # values: NONE, RESPOND, PASSTHROUGH; OPTIONAL
                  AfdSignaling => 'NONE',  # values: NONE, AUTO, FIXED; OPTIONAL
                  FixedAfd     => 1,       # max: 15; OPTIONAL
                  ColorMetadata => 'IGNORE',  # values: IGNORE, INSERT; OPTIONAL
                  VideoPreprocessors => {
                    ImageInserter => {
                      InsertableImages => [
                        {
                          Layer   => 1,    # max: 99
                          Opacity => 1,    # max: 100; OPTIONAL
                          ImageY  => 1,    # min: -2147483648, max: 2147483647
                          ImageInserterInput =>
                            'My__stringMin14PatternS3BmpBMPPngPNGTgaTGA'
                          ,                # min: 14,
                          ImageX => 1,     # min: -2147483648, max: 2147483647
                          StartTime =>
                            'My__stringPattern01D20305D205D',    # OPTIONAL
                          Height   => 1,    # min: -2147483648, max: 2147483647
                          Duration => 1,    # min: -2147483648, max: 2147483647
                          FadeIn   => 1,    # min: -2147483648, max: 2147483647
                          Width    => 1,    # min: -2147483648, max: 2147483647
                          FadeOut  => 1,    # min: -2147483648, max: 2147483647
                        },
                        ...
                      ],

                    },    # OPTIONAL
                    ColorCorrector => {
                      Brightness           => 1,    # min: 1, max: 100; OPTIONAL
                      ColorSpaceConversion => 'NONE'
                      , # values: NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020; OPTIONAL
                      Hdr10Metadata => {
                        MaxFrameAverageLightLevel => 1,   # max: 65535; OPTIONAL
                        MaxContentLightLevel      => 1,   # max: 65535; OPTIONAL
                        MaxLuminance  => 1,    # max: 2147483647; OPTIONAL
                        RedPrimaryX   => 1,    # max: 50000; OPTIONAL
                        GreenPrimaryX => 1,    # max: 50000; OPTIONAL
                        BluePrimaryX  => 1,    # max: 50000; OPTIONAL
                        MinLuminance  => 1,    # max: 2147483647; OPTIONAL
                        WhitePointX   => 1,    # max: 50000; OPTIONAL
                        GreenPrimaryY => 1,    # max: 50000; OPTIONAL
                        BluePrimaryY  => 1,    # max: 50000; OPTIONAL
                        RedPrimaryY   => 1,    # max: 50000; OPTIONAL
                        WhitePointY   => 1,    # max: 50000; OPTIONAL
                      },    # OPTIONAL
                      Hue        => 1,    # min: -180, max: 180; OPTIONAL
                      Contrast   => 1,    # min: 1, max: 100; OPTIONAL
                      Saturation => 1,    # min: 1, max: 100; OPTIONAL
                    },    # OPTIONAL
                    NoiseReducer => {
                      Filter => 'BILATERAL'
                      , # values: BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL
                      SpatialFilterSettings => {
                        PostFilterSharpenStrength => 1,    # max: 3; OPTIONAL
                        Speed    => 1,    # min: -2, max: 3; OPTIONAL
                        Strength => 1,    # max: 16; OPTIONAL
                      },    # OPTIONAL
                      FilterSettings => {
                        Strength => 1,    # max: 3; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    Deinterlacer => {
                      Control => 'FORCE_ALL_FRAMES'
                      ,    # values: FORCE_ALL_FRAMES, NORMAL; OPTIONAL
                      Algorithm => 'INTERPOLATE'
                      , # values: INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER; OPTIONAL
                      Mode => 'DEINTERLACE'
                      , # values: DEINTERLACE, INVERSE_TELECINE, ADAPTIVE; OPTIONAL
                    },    # OPTIONAL
                    TimecodeBurnin => {
                      FontSize => 1,    # min: 10, max: 48; OPTIONAL
                      Prefix   => 'My__stringPattern',    # OPTIONAL
                      Position => 'TOP_CENTER'
                      , # values: TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT; OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  Height => 1,    # min: 32, max: 2160; OPTIONAL
                  ScalingBehavior =>
                    'DEFAULT',    # values: DEFAULT, STRETCH_TO_OUTPUT; OPTIONAL
                  TimecodeInsertion =>
                    'DISABLED',    # values: DISABLED, PIC_TIMING_SEI; OPTIONAL
                  AntiAlias => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                  Width     => 1,          # min: 32, max: 4096; OPTIONAL
                  Crop      => {
                    Y      => 1,           # min: -2147483648, max: 2147483647
                    Height => 1,           # min: -2147483648, max: 2147483647
                    Width  => 1,           # min: -2147483648, max: 2147483647
                    X      => 1,           # min: -2147483648, max: 2147483647

                  },    # OPTIONAL
                  Sharpness => 1,    # max: 100; OPTIONAL
                  DropFrameTimecode =>
                    'DISABLED',      # values: DISABLED, ENABLED; OPTIONAL
                  Position => {
                    Y      => 1,     # min: -2147483648, max: 2147483647
                    Height => 1,     # min: -2147483648, max: 2147483647
                    Width  => 1,     # min: -2147483648, max: 2147483647
                    X      => 1,     # min: -2147483648, max: 2147483647

                  },    # OPTIONAL
                },    # OPTIONAL
                OutputSettings => {
                  HlsSettings => {
                    AudioGroupId    => 'My__string',
                    SegmentModifier => 'My__string',
                    IFrameOnlyManifest =>
                      'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                    AudioTrackType => 'ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT'
                    , # values: ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM; OPTIONAL
                    AudioRenditionSets => 'My__string',
                  },    # OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],
            CustomName => 'My__string',
            Name       => 'My__string',
          },
          ...
        ],
        Inputs => [
          {
            FileInput =>
'My__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MM',
            PsiControl => 'IGNORE_PSI',  # values: IGNORE_PSI, USE_PSI; OPTIONAL
            AudioSelectors => {
              'My__string' => {
                ProgramSelection => 1,      # max: 8; OPTIONAL
                Offset           => 1,      # min: -2147483648, max: 2147483647
                LanguageCode     => 'ENG'
                , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG; OPTIONAL
                Tracks => [
                  1, ...    # min: 1, max: 2147483647; OPTIONAL
                ],          # OPTIONAL
                ExternalAudioFileInput =>
'My__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE'
                ,           # OPTIONAL
                RemixSettings => {
                  ChannelsOut    => 1,    # min: 1, max: 8; OPTIONAL
                  ChannelsIn     => 1,    # min: 1, max: 16
                  ChannelMapping => {
                    OutputChannels => [
                      {
                        InputChannels => [
                          1, ...          # min: -60, max: 6
                        ],

                      },
                      ...
                    ],

                  },

                },    # OPTIONAL
                DefaultSelection =>
                  'DEFAULT',    # values: DEFAULT, NOT_DEFAULT; OPTIONAL
                SelectorType =>
                  'PID',        # values: PID, TRACK, LANGUAGE_CODE; OPTIONAL
                Pids => [
                  1, ...        # min: 1, max: 2147483647; OPTIONAL
                ],              # OPTIONAL
              },
            },    # OPTIONAL
            ProgramNumber  => 1,           # min: 1, max: 2147483647; OPTIONAL
            DenoiseFilter  => 'ENABLED',   # values: ENABLED, DISABLED; OPTIONAL
            DeblockFilter  => 'ENABLED',   # values: ENABLED, DISABLED; OPTIONAL
            InputClippings => [
              {
                StartTimecode =>
                  'My__stringPattern010920405090509092',    # OPTIONAL
                EndTimecode => 'My__stringPattern010920405090509092', # OPTIONAL
              },
              ...
            ],                                                        # OPTIONAL
            CaptionSelectors => {
              'My__string' => {
                SourceSettings => {
                  SourceType => 'ANCILLARY'
                  , # values: ANCILLARY, DVB_SUB, EMBEDDED, SCC, TTML, STL, SRT, TELETEXT, NULL_SOURCE
                  AncillarySourceSettings => {
                    SourceAncillaryChannelNumber =>
                      1,    # min: 1, max: 4; OPTIONAL
                  },    # OPTIONAL
                  TeletextSourceSettings => {
                    PageNumber => 'My__stringMin3Max3Pattern1809aFAF09aEAE'
                    ,    # min: 3, max: 3; OPTIONAL
                  },    # OPTIONAL
                  EmbeddedSourceSettings => {
                    Source608TrackNumber   => 1,    # min: 1, max: 1; OPTIONAL
                    Source608ChannelNumber => 1,    # min: 1, max: 4; OPTIONAL
                    Convert608To708 =>
                      'UPCONVERT',    # values: UPCONVERT, DISABLED; OPTIONAL
                  },    # OPTIONAL
                  FileSourceSettings => {
                    SourceFile =>
'My__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI'
                    ,    # min: 14,
                    Convert608To708 =>
                      'UPCONVERT',    # values: UPCONVERT, DISABLED; OPTIONAL
                    TimeDelta => 1,   # min: -2147483648, max: 2147483647
                  },    # OPTIONAL
                  DvbSubSourceSettings => {
                    Pid => 1,    # min: 1, max: 2147483647; OPTIONAL
                  },    # OPTIONAL
                },
                LanguageCode => 'ENG'
                , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG; OPTIONAL
              },
            },    # OPTIONAL
            FilterStrength => 1,           # min: -5, max: 5; OPTIONAL
            TimecodeSource => 'EMBEDDED'
            ,    # values: EMBEDDED, ZEROBASED, SPECIFIEDSTART; OPTIONAL
            FilterEnable  => 'AUTO',    # values: AUTO, DISABLE, FORCE; OPTIONAL
            VideoSelector => {
              ColorSpace => 'FOLLOW'
              ,    # values: FOLLOW, REC_601, REC_709, HDR10, HLG_2020; OPTIONAL
              ColorSpaceUsage => 'FORCE',    # values: FORCE, FALLBACK; OPTIONAL
              ProgramNumber   => 1,          # min: -2147483648, max: 2147483647
              Hdr10Metadata   => {
                MaxFrameAverageLightLevel => 1,    # max: 65535; OPTIONAL
                MaxContentLightLevel      => 1,    # max: 65535; OPTIONAL
                MaxLuminance              => 1,    # max: 2147483647; OPTIONAL
                RedPrimaryX               => 1,    # max: 50000; OPTIONAL
                GreenPrimaryX             => 1,    # max: 50000; OPTIONAL
                BluePrimaryX              => 1,    # max: 50000; OPTIONAL
                MinLuminance              => 1,    # max: 2147483647; OPTIONAL
                WhitePointX               => 1,    # max: 50000; OPTIONAL
                GreenPrimaryY             => 1,    # max: 50000; OPTIONAL
                BluePrimaryY              => 1,    # max: 50000; OPTIONAL
                RedPrimaryY               => 1,    # max: 50000; OPTIONAL
                WhitePointY               => 1,    # max: 50000; OPTIONAL
              },    # OPTIONAL
              Pid => 1,    # min: 1, max: 2147483647; OPTIONAL
            },    # OPTIONAL
            AudioSelectorGroups => {
              'My__string' => {
                AudioSelectorNames => [
                  'My__stringMin1', ...    # min: 1, ; OPTIONAL
                ],

              },
            },    # OPTIONAL
          },
          ...
        ],
        AvailBlanking => {
          AvailBlankingImage =>
            'My__stringMin14PatternS3BmpBMPPngPNG',    # min: 14, ; OPTIONAL
        },    # OPTIONAL
        TimecodeConfig => {
          Start           => 'My__stringPattern010920405090509092',   # OPTIONAL
          TimestampOffset => 'My__stringPattern0940191020191209301',  # OPTIONAL
          Anchor          => 'My__stringPattern010920405090509092',   # OPTIONAL
          Source =>
            'EMBEDDED',  # values: EMBEDDED, ZEROBASED, SPECIFIEDSTART; OPTIONAL
        },    # OPTIONAL
        AdAvailOffset        => 1,    # min: -1000, max: 1000; OPTIONAL
        NielsenConfiguration => {
          BreakoutCode  => 1,              # max: 9; OPTIONAL
          DistributorId => 'My__string',
        },    # OPTIONAL
        TimedMetadataInsertion => {
          Id3Insertions => [
            {
              Timecode => 'My__stringPattern010920405090509092',    # OPTIONAL
              Id3      => 'My__stringPatternAZaZ0902',

            },
            ...
          ],

        },    # OPTIONAL
      },
      ClientRequestToken => 'My__string',                         # OPTIONAL
      JobTemplate        => 'My__string',                         # OPTIONAL
      Queue              => 'My__string',                         # OPTIONAL
      UserMetadata       => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Job = $CreateJobResponse->Job;

    # Returns a L<Paws::MediaConvert::CreateJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/CreateJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotency token for CreateJob operation.



=head2 JobTemplate => Str

When you create a job, you can either specify a job template or specify
the transcoding settings individually



=head2 Queue => Str

Optional. When you create a job, you can specify a queue to send it to.
If you don't specify, the job will go to the default queue. For more
about queues, see the User Guide topic at
http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html.



=head2 B<REQUIRED> Role => Str

Required. The IAM role you use for creating this job. For details about
permissions, see the User Guide topic at the User Guide at
http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.



=head2 B<REQUIRED> Settings => L<Paws::MediaConvert::JobSettings>





=head2 UserMetadata => L<Paws::MediaConvert::__mapOf__string>

User-defined metadata that you want to associate with an MediaConvert
job. You specify metadata in key/value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

