
package Paws::MediaConvert::CreateJob;
  use Moose;
  has AccelerationSettings => (is => 'ro', isa => 'Paws::MediaConvert::AccelerationSettings', traits => ['NameInRequest'], request_name => 'accelerationSettings');
  has BillingTagsSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billingTagsSource');
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
        AdAvailOffset => 1,    # min: -1000, max: 1000; OPTIONAL
        AvailBlanking => {
          AvailBlankingImage =>
            'My__stringMin14PatternS3BmpBMPPngPNG',    # min: 14; OPTIONAL
        },    # OPTIONAL
        Inputs => [
          {
            AudioSelectorGroups => {
              'My__string' => {
                AudioSelectorNames => [
                  'My__stringMin1', ...    # min: 1; OPTIONAL
                ],                         # OPTIONAL
              },
            },    # OPTIONAL
            AudioSelectors => {
              'My__string' => {
                CustomLanguageCode =>
                  'My__stringMin3Max3PatternAZaZ3',   # min: 3, max: 3; OPTIONAL
                DefaultSelection =>
                  'DEFAULT',    # values: DEFAULT, NOT_DEFAULT; OPTIONAL
                ExternalAudioFileInput =>
'My__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE'
                ,               # OPTIONAL
                LanguageCode => 'ENG'
                , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG; OPTIONAL
                Offset => 1,    # min: -2147483648, max: 2147483647; OPTIONAL
                Pids   => [
                  1, ...        # min: 1, max: 2147483647; OPTIONAL
                ],              # OPTIONAL
                ProgramSelection => 1,    # max: 8; OPTIONAL
                RemixSettings    => {
                  ChannelMapping => {
                    OutputChannels => [
                      {
                        InputChannels => [
                          1, ...          # min: -60, max: 6
                        ],                # OPTIONAL
                      },
                      ...
                    ],                    # OPTIONAL
                  },    # OPTIONAL
                  ChannelsIn  => 1,    # min: 1, max: 16; OPTIONAL
                  ChannelsOut => 1,    # min: 1, max: 8; OPTIONAL
                },    # OPTIONAL
                SelectorType =>
                  'PID',    # values: PID, TRACK, LANGUAGE_CODE; OPTIONAL
                Tracks => [
                  1, ...    # min: 1, max: 2147483647; OPTIONAL
                ],          # OPTIONAL
              },
            },    # OPTIONAL
            CaptionSelectors => {
              'My__string' => {
                CustomLanguageCode =>
                  'My__stringMin3Max3PatternAZaZ3',   # min: 3, max: 3; OPTIONAL
                LanguageCode => 'ENG'
                , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG; OPTIONAL
                SourceSettings => {
                  AncillarySourceSettings => {
                    SourceAncillaryChannelNumber =>
                      1,    # min: 1, max: 4; OPTIONAL
                  },    # OPTIONAL
                  DvbSubSourceSettings => {
                    Pid => 1,    # min: 1, max: 2147483647; OPTIONAL
                  },    # OPTIONAL
                  EmbeddedSourceSettings => {
                    Convert608To708 =>
                      'UPCONVERT',    # values: UPCONVERT, DISABLED; OPTIONAL
                    Source608ChannelNumber => 1,    # min: 1, max: 4; OPTIONAL
                    Source608TrackNumber   => 1,    # min: 1, max: 1; OPTIONAL
                  },    # OPTIONAL
                  FileSourceSettings => {
                    Convert608To708 =>
                      'UPCONVERT',    # values: UPCONVERT, DISABLED; OPTIONAL
                    SourceFile =>
'My__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI'
                    ,                 # min: 14; OPTIONAL
                    TimeDelta =>
                      1,    # min: -2147483648, max: 2147483647; OPTIONAL
                  },    # OPTIONAL
                  SourceType => 'ANCILLARY'
                  , # values: ANCILLARY, DVB_SUB, EMBEDDED, SCTE20, SCC, TTML, STL, SRT, SMI, TELETEXT, NULL_SOURCE, IMSC; OPTIONAL
                  TeletextSourceSettings => {
                    PageNumber => 'My__stringMin3Max3Pattern1809aFAF09aEAE'
                    ,    # min: 3, max: 3; OPTIONAL
                  },    # OPTIONAL
                  TrackSourceSettings => {
                    TrackNumber => 1,    # min: 1, max: 2147483647; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
              },
            },    # OPTIONAL
            DeblockFilter => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
            DecryptionSettings => {
              DecryptionMode =>
                'AES_CTR',    # values: AES_CTR, AES_CBC, AES_GCM; OPTIONAL
              EncryptedDecryptionKey => 'My__stringMin24Max512PatternAZaZ0902'
              ,               # min: 24, max: 512; OPTIONAL
              InitializationVector =>
                'My__stringMin16Max24PatternAZaZ0922AZaZ0916'
              ,               # min: 16, max: 24; OPTIONAL
              KmsKeyRegion =>
'My__stringMin9Max19PatternAZ26EastWestCentralNorthSouthEastWest1912'
              ,               # min: 9, max: 19; OPTIONAL
            },    # OPTIONAL
            DenoiseFilter => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
            FileInput =>
'My__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLL'
            ,                              # OPTIONAL
            FilterEnable   => 'AUTO',   # values: AUTO, DISABLE, FORCE; OPTIONAL
            FilterStrength => 1,        # min: -5, max: 5; OPTIONAL
            ImageInserter  => {
              InsertableImages => [
                {
                  Duration => 1,        # max: 2147483647; OPTIONAL
                  FadeIn   => 1,        # max: 2147483647; OPTIONAL
                  FadeOut  => 1,        # max: 2147483647; OPTIONAL
                  Height   => 1,        # max: 2147483647; OPTIONAL
                  ImageInserterInput =>
                    'My__stringMin14PatternS3BmpBMPPngPNGTgaTGA'
                  ,                     # min: 14; OPTIONAL
                  ImageX  => 1,         # max: 2147483647; OPTIONAL
                  ImageY  => 1,         # max: 2147483647; OPTIONAL
                  Layer   => 1,         # max: 99; OPTIONAL
                  Opacity => 1,         # max: 100; OPTIONAL
                  StartTime => 'My__stringPattern01D20305D205D',    # OPTIONAL
                  Width => 1,    # max: 2147483647; OPTIONAL
                },
                ...
              ],                 # OPTIONAL
            },    # OPTIONAL
            InputClippings => [
              {
                EndTimecode => 'My__stringPattern010920405090509092', # OPTIONAL
                StartTimecode =>
                  'My__stringPattern010920405090509092',              # OPTIONAL
              },
              ...
            ],                                                        # OPTIONAL
            ProgramNumber => 1,    # min: 1, max: 2147483647; OPTIONAL
            PsiControl => 'IGNORE_PSI',  # values: IGNORE_PSI, USE_PSI; OPTIONAL
            SupplementalImps => [ 'My__stringPatternS3ASSETMAPXml', ... ]
            ,                            # OPTIONAL
            TimecodeSource => 'EMBEDDED'
            ,    # values: EMBEDDED, ZEROBASED, SPECIFIEDSTART; OPTIONAL
            VideoSelector => {
              ColorSpace => 'FOLLOW'
              ,    # values: FOLLOW, REC_601, REC_709, HDR10, HLG_2020; OPTIONAL
              ColorSpaceUsage => 'FORCE',    # values: FORCE, FALLBACK; OPTIONAL
              Hdr10Metadata   => {
                BluePrimaryX              => 1,    # max: 50000; OPTIONAL
                BluePrimaryY              => 1,    # max: 50000; OPTIONAL
                GreenPrimaryX             => 1,    # max: 50000; OPTIONAL
                GreenPrimaryY             => 1,    # max: 50000; OPTIONAL
                MaxContentLightLevel      => 1,    # max: 65535; OPTIONAL
                MaxFrameAverageLightLevel => 1,    # max: 65535; OPTIONAL
                MaxLuminance              => 1,    # max: 2147483647; OPTIONAL
                MinLuminance              => 1,    # max: 2147483647; OPTIONAL
                RedPrimaryX               => 1,    # max: 50000; OPTIONAL
                RedPrimaryY               => 1,    # max: 50000; OPTIONAL
                WhitePointX               => 1,    # max: 50000; OPTIONAL
                WhitePointY               => 1,    # max: 50000; OPTIONAL
              },    # OPTIONAL
              Pid           => 1,  # min: 1, max: 2147483647; OPTIONAL
              ProgramNumber => 1,  # min: -2147483648, max: 2147483647; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # OPTIONAL
        MotionImageInserter => {
          Framerate => {
            FramerateDenominator => 1,    # min: 1, max: 17895697; OPTIONAL
            FramerateNumerator   => 1,    # min: 1, max: 2147483640; OPTIONAL
          },    # OPTIONAL
          Input => 'My__stringMin14Max1285PatternS3Mov09Png'
          ,     # min: 14, max: 1285; OPTIONAL
          InsertionMode => 'MOV',    # values: MOV, PNG; OPTIONAL
          Offset        => {
            ImageX => 1,             # max: 2147483647; OPTIONAL
            ImageY => 1,             # max: 2147483647; OPTIONAL
          },    # OPTIONAL
          Playback => 'ONCE',    # values: ONCE, REPEAT; OPTIONAL
          StartTime => 'My__stringMin11Max11Pattern01D20305D205D'
          ,                      # min: 11, max: 11; OPTIONAL
        },    # OPTIONAL
        NielsenConfiguration => {
          BreakoutCode  => 1,              # max: 9; OPTIONAL
          DistributorId => 'My__string',
        },    # OPTIONAL
        OutputGroups => [
          {
            CustomName          => 'My__string',
            Name                => 'My__string',
            OutputGroupSettings => {
              CmafGroupSettings => {
                BaseUrl => 'My__string',
                ClientCache => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                CodecSpecification =>
                  'RFC_6381',    # values: RFC_6381, RFC_4281; OPTIONAL
                Destination => 'My__stringPatternS3',    # OPTIONAL
                Encryption  => {
                  ConstantInitializationVector =>
                    'My__stringMin32Max32Pattern09aFAF32'
                  ,    # min: 32, max: 32; OPTIONAL
                  EncryptionMethod =>
                    'SAMPLE_AES',    # values: SAMPLE_AES; OPTIONAL
                  InitializationVectorInManifest =>
                    'INCLUDE',       # values: INCLUDE, EXCLUDE; OPTIONAL
                  StaticKeyProvider => {
                    KeyFormat =>
                      'My__stringPatternIdentityAZaZ26AZaZ09163',    # OPTIONAL
                    KeyFormatVersions => 'My__stringPatternDD',       # OPTIONAL
                    StaticKeyValue    => 'My__stringPatternAZaZ0932', # OPTIONAL
                    Url               => 'My__string',
                  },    # OPTIONAL
                  Type => 'STATIC_KEY',    # values: STATIC_KEY; OPTIONAL
                },    # OPTIONAL
                FragmentLength => 1,    # min: 1, max: 2147483647; OPTIONAL
                ManifestCompression => 'GZIP',    # values: GZIP, NONE; OPTIONAL
                ManifestDurationFormat =>
                  'FLOATING_POINT',  # values: FLOATING_POINT, INTEGER; OPTIONAL
                MinBufferTime         => 1,    # max: 2147483647; OPTIONAL
                MinFinalSegmentLength => 1,    # OPTIONAL
                SegmentControl => 'SINGLE_FILE'
                ,    # values: SINGLE_FILE, SEGMENTED_FILES; OPTIONAL
                SegmentLength => 1,    # min: 1, max: 2147483647; OPTIONAL
                StreamInfResolution =>
                  'INCLUDE',           # values: INCLUDE, EXCLUDE; OPTIONAL
                WriteDashManifest =>
                  'DISABLED',          # values: DISABLED, ENABLED; OPTIONAL
                WriteHlsManifest =>
                  'DISABLED',          # values: DISABLED, ENABLED; OPTIONAL
              },    # OPTIONAL
              DashIsoGroupSettings => {
                BaseUrl     => 'My__string',
                Destination => 'My__stringPatternS3',    # OPTIONAL
                Encryption  => {
                  SpekeKeyProvider => {
                    CertificateArn =>
                      'My__stringPatternArnAwsUsGovAcm',    # OPTIONAL
                    ResourceId => 'My__string',
                    SystemIds  => [
                      'My__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12',
                      ...
                    ],                                      # OPTIONAL
                    Url => 'My__stringPatternHttps',        # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                FragmentLength => 1,    # min: 1, max: 2147483647; OPTIONAL
                HbbtvCompliance =>
                  'HBBTV_1_5',          # values: HBBTV_1_5, NONE; OPTIONAL
                MinBufferTime  => 1,              # max: 2147483647; OPTIONAL
                SegmentControl => 'SINGLE_FILE'
                ,    # values: SINGLE_FILE, SEGMENTED_FILES; OPTIONAL
                SegmentLength => 1,    # min: 1, max: 2147483647; OPTIONAL
                WriteSegmentTimelineInRepresentation =>
                  'ENABLED',           # values: ENABLED, DISABLED; OPTIONAL
              },    # OPTIONAL
              FileGroupSettings => {
                Destination => 'My__stringPatternS3',    # OPTIONAL
              },    # OPTIONAL
              HlsGroupSettings => {
                AdMarkers => [
                  'ELEMENTAL', ...    # values: ELEMENTAL, ELEMENTAL_SCTE35
                ],                    # OPTIONAL
                BaseUrl                 => 'My__string',
                CaptionLanguageMappings => [
                  {
                    CaptionChannel =>
                      1,    # min: -2147483648, max: 2147483647; OPTIONAL
                    CustomLanguageCode => 'My__stringMin3Max3PatternAZaZ3'
                    ,       # min: 3, max: 3; OPTIONAL
                    LanguageCode => 'ENG'
                    , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG; OPTIONAL
                    LanguageDescription => 'My__string',
                  },
                  ...
                ],    # OPTIONAL
                CaptionLanguageSetting =>
                  'INSERT',    # values: INSERT, OMIT, NONE; OPTIONAL
                ClientCache => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                CodecSpecification =>
                  'RFC_6381',    # values: RFC_6381, RFC_4281; OPTIONAL
                Destination        => 'My__stringPatternS3',    # OPTIONAL
                DirectoryStructure => 'SINGLE_DIRECTORY'
                ,  # values: SINGLE_DIRECTORY, SUBDIRECTORY_PER_STREAM; OPTIONAL
                Encryption => {
                  ConstantInitializationVector =>
                    'My__stringMin32Max32Pattern09aFAF32'
                  ,    # min: 32, max: 32; OPTIONAL
                  EncryptionMethod =>
                    'AES128',    # values: AES128, SAMPLE_AES; OPTIONAL
                  InitializationVectorInManifest =>
                    'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                  SpekeKeyProvider => {
                    CertificateArn =>
                      'My__stringPatternArnAwsUsGovAcm',    # OPTIONAL
                    ResourceId => 'My__string',
                    SystemIds  => [
                      'My__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12',
                      ...
                    ],                                      # OPTIONAL
                    Url => 'My__stringPatternHttps',        # OPTIONAL
                  },    # OPTIONAL
                  StaticKeyProvider => {
                    KeyFormat =>
                      'My__stringPatternIdentityAZaZ26AZaZ09163',    # OPTIONAL
                    KeyFormatVersions => 'My__stringPatternDD',       # OPTIONAL
                    StaticKeyValue    => 'My__stringPatternAZaZ0932', # OPTIONAL
                    Url               => 'My__string',
                  },    # OPTIONAL
                  Type => 'SPEKE',    # values: SPEKE, STATIC_KEY; OPTIONAL
                },    # OPTIONAL
                ManifestCompression => 'GZIP',    # values: GZIP, NONE; OPTIONAL
                ManifestDurationFormat =>
                  'FLOATING_POINT',  # values: FLOATING_POINT, INTEGER; OPTIONAL
                MinFinalSegmentLength => 1,    # OPTIONAL
                MinSegmentLength      => 1,    # max: 2147483647; OPTIONAL
                OutputSelection => 'MANIFESTS_AND_SEGMENTS'
                ,    # values: MANIFESTS_AND_SEGMENTS, SEGMENTS_ONLY; OPTIONAL
                ProgramDateTime =>
                  'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                ProgramDateTimePeriod => 1,              # max: 3600; OPTIONAL
                SegmentControl        => 'SINGLE_FILE'
                ,    # values: SINGLE_FILE, SEGMENTED_FILES; OPTIONAL
                SegmentLength => 1,    # min: 1, max: 2147483647; OPTIONAL
                SegmentsPerSubdirectory =>
                  1,                   # min: 1, max: 2147483647; OPTIONAL
                StreamInfResolution =>
                  'INCLUDE',           # values: INCLUDE, EXCLUDE; OPTIONAL
                TimedMetadataId3Frame =>
                  'NONE',              # values: NONE, PRIV, TDRL; OPTIONAL
                TimedMetadataId3Period =>
                  1,    # min: -2147483648, max: 2147483647; OPTIONAL
                TimestampDeltaMilliseconds =>
                  1,    # min: -2147483648, max: 2147483647; OPTIONAL
              },    # OPTIONAL
              MsSmoothGroupSettings => {
                AudioDeduplication => 'COMBINE_DUPLICATE_STREAMS'
                ,    # values: COMBINE_DUPLICATE_STREAMS, NONE; OPTIONAL
                Destination => 'My__stringPatternS3',    # OPTIONAL
                Encryption  => {
                  SpekeKeyProvider => {
                    CertificateArn =>
                      'My__stringPatternArnAwsUsGovAcm',    # OPTIONAL
                    ResourceId => 'My__string',
                    SystemIds  => [
                      'My__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12',
                      ...
                    ],                                      # OPTIONAL
                    Url => 'My__stringPatternHttps',        # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                FragmentLength   => 1,       # min: 1, max: 2147483647; OPTIONAL
                ManifestEncoding => 'UTF8',  # values: UTF8, UTF16; OPTIONAL
              },    # OPTIONAL
              Type => 'HLS_GROUP_SETTINGS'
              , # values: HLS_GROUP_SETTINGS, DASH_ISO_GROUP_SETTINGS, FILE_GROUP_SETTINGS, MS_SMOOTH_GROUP_SETTINGS, CMAF_GROUP_SETTINGS; OPTIONAL
            },    # OPTIONAL
            Outputs => [
              {
                AudioDescriptions => [
                  {
                    AudioNormalizationSettings => {
                      Algorithm => 'ITU_BS_1770_1'
                      ,    # values: ITU_BS_1770_1, ITU_BS_1770_2; OPTIONAL
                      AlgorithmControl => 'CORRECT_AUDIO'
                      ,    # values: CORRECT_AUDIO, MEASURE_ONLY; OPTIONAL
                      CorrectionGateLevel => 1,    # min: -70; OPTIONAL
                      LoudnessLogging =>
                        'LOG',    # values: LOG, DONT_LOG; OPTIONAL
                      PeakCalculation =>
                        'TRUE_PEAK',    # values: TRUE_PEAK, NONE; OPTIONAL
                      TargetLkfs => 1,  # OPTIONAL
                    },    # OPTIONAL
                    AudioSourceName  => 'My__string',
                    AudioType        => 1,               # max: 255; OPTIONAL
                    AudioTypeControl => 'FOLLOW_INPUT'
                    ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                    CodecSettings => {
                      AacSettings => {
                        AudioDescriptionBroadcasterMix => 'BROADCASTER_MIXED_AD'
                        ,    # values: BROADCASTER_MIXED_AD, NORMAL; OPTIONAL
                        Bitrate => 1,    # min: 6000, max: 1024000; OPTIONAL
                        CodecProfile => 'LC', # values: LC, HEV1, HEV2; OPTIONAL
                        CodingMode => 'AD_RECEIVER_MIX'
                        , # values: AD_RECEIVER_MIX, CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_5_1; OPTIONAL
                        RateControlMode => 'CBR',   # values: CBR, VBR; OPTIONAL
                        RawFormat =>
                          'LATM_LOAS',    # values: LATM_LOAS, NONE; OPTIONAL
                        SampleRate => 1,  # min: 8000, max: 96000; OPTIONAL
                        Specification =>
                          'MPEG2',        # values: MPEG2, MPEG4; OPTIONAL
                        VbrQuality => 'LOW'
                        , # values: LOW, MEDIUM_LOW, MEDIUM_HIGH, HIGH; OPTIONAL
                      },    # OPTIONAL
                      Ac3Settings => {
                        Bitrate => 1,    # min: 64000, max: 640000; OPTIONAL
                        BitstreamMode => 'COMPLETE_MAIN'
                        , # values: COMPLETE_MAIN, COMMENTARY, DIALOGUE, EMERGENCY, HEARING_IMPAIRED, MUSIC_AND_EFFECTS, VISUALLY_IMPAIRED, VOICE_OVER; OPTIONAL
                        CodingMode => 'CODING_MODE_1_0'
                        , # values: CODING_MODE_1_0, CODING_MODE_1_1, CODING_MODE_2_0, CODING_MODE_3_2_LFE; OPTIONAL
                        Dialnorm => 1,    # min: 1, max: 31; OPTIONAL
                        DynamicRangeCompressionProfile => 'FILM_STANDARD'
                        ,    # values: FILM_STANDARD, NONE; OPTIONAL
                        LfeFilter =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        MetadataControl => 'FOLLOW_INPUT'
                        ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                        SampleRate => 1,    # min: 48000, max: 48000; OPTIONAL
                      },    # OPTIONAL
                      AiffSettings => {
                        BitDepth   => 1,    # min: 16, max: 24; OPTIONAL
                        Channels   => 1,    # min: 1, max: 2; OPTIONAL
                        SampleRate => 1,    # min: 8000, max: 192000; OPTIONAL
                      },    # OPTIONAL
                      Codec => 'AAC'
                      , # values: AAC, MP2, WAV, AIFF, AC3, EAC3, PASSTHROUGH; OPTIONAL
                      Eac3Settings => {
                        AttenuationControl => 'ATTENUATE_3_DB'
                        ,    # values: ATTENUATE_3_DB, NONE; OPTIONAL
                        Bitrate => 1,    # min: 64000, max: 640000; OPTIONAL
                        BitstreamMode => 'COMPLETE_MAIN'
                        , # values: COMPLETE_MAIN, COMMENTARY, EMERGENCY, HEARING_IMPAIRED, VISUALLY_IMPAIRED; OPTIONAL
                        CodingMode => 'CODING_MODE_1_0'
                        , # values: CODING_MODE_1_0, CODING_MODE_2_0, CODING_MODE_3_2; OPTIONAL
                        DcFilter =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        Dialnorm => 1,  # min: 1, max: 31; OPTIONAL
                        DynamicRangeCompressionLine => 'NONE'
                        , # values: NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH; OPTIONAL
                        DynamicRangeCompressionRf => 'NONE'
                        , # values: NONE, FILM_STANDARD, FILM_LIGHT, MUSIC_STANDARD, MUSIC_LIGHT, SPEECH; OPTIONAL
                        LfeControl => 'LFE',    # values: LFE, NO_LFE; OPTIONAL
                        LfeFilter =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                        LoRoCenterMixLevel   => 1,               # OPTIONAL
                        LoRoSurroundMixLevel => 1,               # OPTIONAL
                        LtRtCenterMixLevel   => 1,               # OPTIONAL
                        LtRtSurroundMixLevel => 1,               # OPTIONAL
                        MetadataControl      => 'FOLLOW_INPUT'
                        ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                        PassthroughControl => 'WHEN_POSSIBLE'
                        ,    # values: WHEN_POSSIBLE, NO_PASSTHROUGH; OPTIONAL
                        PhaseControl => 'SHIFT_90_DEGREES'
                        ,    # values: SHIFT_90_DEGREES, NO_SHIFT; OPTIONAL
                        SampleRate => 1,    # min: 48000, max: 48000; OPTIONAL
                        StereoDownmix => 'NOT_INDICATED'
                        ,  # values: NOT_INDICATED, LO_RO, LT_RT, DPL2; OPTIONAL
                        SurroundExMode => 'NOT_INDICATED'
                        ,   # values: NOT_INDICATED, ENABLED, DISABLED; OPTIONAL
                        SurroundMode => 'NOT_INDICATED'
                        ,   # values: NOT_INDICATED, ENABLED, DISABLED; OPTIONAL
                      },    # OPTIONAL
                      Mp2Settings => {
                        Bitrate    => 1,    # min: 32000, max: 384000; OPTIONAL
                        Channels   => 1,    # min: 1, max: 2; OPTIONAL
                        SampleRate => 1,    # min: 32000, max: 48000; OPTIONAL
                      },    # OPTIONAL
                      WavSettings => {
                        BitDepth   => 1,      # min: 16, max: 24; OPTIONAL
                        Channels   => 1,      # min: 1, max: 8; OPTIONAL
                        Format     => 'RIFF', # values: RIFF, RF64; OPTIONAL
                        SampleRate => 1,      # min: 8000, max: 192000; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    CustomLanguageCode => 'My__stringMin3Max3PatternAZaZ3'
                    ,     # min: 3, max: 3; OPTIONAL
                    LanguageCode => 'ENG'
                    , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG; OPTIONAL
                    LanguageCodeControl => 'FOLLOW_INPUT'
                    ,    # values: FOLLOW_INPUT, USE_CONFIGURED; OPTIONAL
                    RemixSettings => {
                      ChannelMapping => {
                        OutputChannels => [
                          {
                            InputChannels => [
                              1, ...    # min: -60, max: 6
                            ],          # OPTIONAL
                          },
                          ...
                        ],              # OPTIONAL
                      },    # OPTIONAL
                      ChannelsIn  => 1,    # min: 1, max: 16; OPTIONAL
                      ChannelsOut => 1,    # min: 1, max: 8; OPTIONAL
                    },    # OPTIONAL
                    StreamName => 'My__stringPatternWS',    # OPTIONAL
                  },
                  ...
                ],                                          # OPTIONAL
                CaptionDescriptions => [
                  {
                    CaptionSelectorName => 'My__stringMin1',  # min: 1; OPTIONAL
                    CustomLanguageCode => 'My__stringMin3Max3PatternAZaZ3'
                    ,    # min: 3, max: 3; OPTIONAL
                    DestinationSettings => {
                      BurninDestinationSettings => {
                        Alignment =>
                          'CENTERED',    # values: CENTERED, LEFT; OPTIONAL
                        BackgroundColor =>
                          'NONE',        # values: NONE, BLACK, WHITE; OPTIONAL
                        BackgroundOpacity => 1,        # max: 255; OPTIONAL
                        FontColor         => 'WHITE'
                        , # values: WHITE, BLACK, YELLOW, RED, GREEN, BLUE; OPTIONAL
                        FontOpacity    => 1,    # max: 255; OPTIONAL
                        FontResolution => 1,    # min: 96, max: 600; OPTIONAL
                        FontScript =>
                          'AUTOMATIC', # values: AUTOMATIC, HANS, HANT; OPTIONAL
                        FontSize     => 1,        # max: 96; OPTIONAL
                        OutlineColor => 'BLACK'
                        , # values: BLACK, WHITE, YELLOW, RED, GREEN, BLUE; OPTIONAL
                        OutlineSize => 1,    # max: 10; OPTIONAL
                        ShadowColor =>
                          'NONE',    # values: NONE, BLACK, WHITE; OPTIONAL
                        ShadowOpacity => 1,    # max: 255; OPTIONAL
                        ShadowXOffset =>
                          1,    # min: -2147483648, max: 2147483647; OPTIONAL
                        ShadowYOffset =>
                          1,    # min: -2147483648, max: 2147483647; OPTIONAL
                        TeletextSpacing => 'FIXED_GRID'
                        ,       # values: FIXED_GRID, PROPORTIONAL; OPTIONAL
                        XPosition => 1,    # max: 2147483647; OPTIONAL
                        YPosition => 1,    # max: 2147483647; OPTIONAL
                      },    # OPTIONAL
                      DestinationType => 'BURN_IN'
                      , # values: BURN_IN, DVB_SUB, EMBEDDED, EMBEDDED_PLUS_SCTE20, SCTE20_PLUS_EMBEDDED, SCC, SRT, SMI, TELETEXT, TTML, WEBVTT; OPTIONAL
                      DvbSubDestinationSettings => {
                        Alignment =>
                          'CENTERED',    # values: CENTERED, LEFT; OPTIONAL
                        BackgroundColor =>
                          'NONE',        # values: NONE, BLACK, WHITE; OPTIONAL
                        BackgroundOpacity => 1,        # max: 255; OPTIONAL
                        FontColor         => 'WHITE'
                        , # values: WHITE, BLACK, YELLOW, RED, GREEN, BLUE; OPTIONAL
                        FontOpacity    => 1,    # max: 255; OPTIONAL
                        FontResolution => 1,    # min: 96, max: 600; OPTIONAL
                        FontScript =>
                          'AUTOMATIC', # values: AUTOMATIC, HANS, HANT; OPTIONAL
                        FontSize     => 1,        # max: 96; OPTIONAL
                        OutlineColor => 'BLACK'
                        , # values: BLACK, WHITE, YELLOW, RED, GREEN, BLUE; OPTIONAL
                        OutlineSize => 1,    # max: 10; OPTIONAL
                        ShadowColor =>
                          'NONE',    # values: NONE, BLACK, WHITE; OPTIONAL
                        ShadowOpacity => 1,    # max: 255; OPTIONAL
                        ShadowXOffset =>
                          1,    # min: -2147483648, max: 2147483647; OPTIONAL
                        ShadowYOffset =>
                          1,    # min: -2147483648, max: 2147483647; OPTIONAL
                        TeletextSpacing => 'FIXED_GRID'
                        ,       # values: FIXED_GRID, PROPORTIONAL; OPTIONAL
                        XPosition => 1,    # max: 2147483647; OPTIONAL
                        YPosition => 1,    # max: 2147483647; OPTIONAL
                      },    # OPTIONAL
                      EmbeddedDestinationSettings => {
                        Destination608ChannelNumber =>
                          1,    # min: 1, max: 4; OPTIONAL
                      },    # OPTIONAL
                      SccDestinationSettings => {
                        Framerate => 'FRAMERATE_23_97'
                        , # values: FRAMERATE_23_97, FRAMERATE_24, FRAMERATE_29_97_DROPFRAME, FRAMERATE_29_97_NON_DROPFRAME; OPTIONAL
                      },    # OPTIONAL
                      TeletextDestinationSettings => {
                        PageNumber => 'My__stringMin3Max3Pattern1809aFAF09aEAE'
                        ,    # min: 3, max: 3; OPTIONAL
                      },    # OPTIONAL
                      TtmlDestinationSettings => {
                        StylePassthrough =>
                          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    LanguageCode => 'ENG'
                    , # values: ENG, SPA, FRA, DEU, GER, ZHO, ARA, HIN, JPN, RUS, POR, ITA, URD, VIE, KOR, PAN, ABK, AAR, AFR, AKA, SQI, AMH, ARG, HYE, ASM, AVA, AVE, AYM, AZE, BAM, BAK, EUS, BEL, BEN, BIH, BIS, BOS, BRE, BUL, MYA, CAT, KHM, CHA, CHE, NYA, CHU, CHV, COR, COS, CRE, HRV, CES, DAN, DIV, NLD, DZO, ENM, EPO, EST, EWE, FAO, FIJ, FIN, FRM, FUL, GLA, GLG, LUG, KAT, ELL, GRN, GUJ, HAT, HAU, HEB, HER, HMO, HUN, ISL, IDO, IBO, IND, INA, ILE, IKU, IPK, GLE, JAV, KAL, KAN, KAU, KAS, KAZ, KIK, KIN, KIR, KOM, KON, KUA, KUR, LAO, LAT, LAV, LIM, LIN, LIT, LUB, LTZ, MKD, MLG, MSA, MAL, MLT, GLV, MRI, MAR, MAH, MON, NAU, NAV, NDE, NBL, NDO, NEP, SME, NOR, NOB, NNO, OCI, OJI, ORI, ORM, OSS, PLI, FAS, POL, PUS, QUE, QAA, RON, ROH, RUN, SMO, SAG, SAN, SRD, SRB, SNA, III, SND, SIN, SLK, SLV, SOM, SOT, SUN, SWA, SSW, SWE, TGL, TAH, TGK, TAM, TAT, TEL, THA, BOD, TIR, TON, TSO, TSN, TUR, TUK, TWI, UIG, UKR, UZB, VEN, VOL, WLN, CYM, FRY, WOL, XHO, YID, YOR, ZHA, ZUL, ORJ, QPC, TNG; OPTIONAL
                    LanguageDescription => 'My__string',
                  },
                  ...
                ],    # OPTIONAL
                ContainerSettings => {
                  Container => 'F4V'
                  , # values: F4V, ISMV, M2TS, M3U8, CMFC, MOV, MP4, MPD, MXF, RAW; OPTIONAL
                  F4vSettings => {
                    MoovPlacement => 'PROGRESSIVE_DOWNLOAD'
                    ,    # values: PROGRESSIVE_DOWNLOAD, NORMAL; OPTIONAL
                  },    # OPTIONAL
                  M2tsSettings => {
                    AudioBufferModel  => 'DVB',    # values: DVB, ATSC; OPTIONAL
                    AudioFramesPerPes => 1,        # max: 2147483647; OPTIONAL
                    AudioPids         => [
                      1, ...                       # min: 32, max: 8182
                    ],                             # OPTIONAL
                    Bitrate => 1,                  # max: 2147483647; OPTIONAL
                    BufferModel =>
                      'MULTIPLEX',    # values: MULTIPLEX, NONE; OPTIONAL
                    DvbNitSettings => {
                      NetworkId => 1,    # max: 65535; OPTIONAL
                      NetworkName =>
                        'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                      NitInterval => 1,    # min: 25, max: 10000; OPTIONAL
                    },    # OPTIONAL
                    DvbSdtSettings => {
                      OutputSdt => 'SDT_FOLLOW'
                      , # values: SDT_FOLLOW, SDT_FOLLOW_IF_PRESENT, SDT_MANUAL, SDT_NONE; OPTIONAL
                      SdtInterval => 1,    # min: 25, max: 2000; OPTIONAL
                      ServiceName =>
                        'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                      ServiceProviderName =>
                        'My__stringMin1Max256',    # min: 1, max: 256; OPTIONAL
                    },    # OPTIONAL
                    DvbSubPids => [
                      1, ...    # min: 32, max: 8182
                    ],          # OPTIONAL
                    DvbTdtSettings => {
                      TdtInterval => 1,    # min: 1000, max: 30000; OPTIONAL
                    },    # OPTIONAL
                    DvbTeletextPid => 1,    # min: 32, max: 8182
                    EbpAudioInterval => 'VIDEO_AND_FIXED_INTERVALS'
                    , # values: VIDEO_AND_FIXED_INTERVALS, VIDEO_INTERVAL; OPTIONAL
                    EbpPlacement => 'VIDEO_AND_AUDIO_PIDS'
                    ,    # values: VIDEO_AND_AUDIO_PIDS, VIDEO_PID; OPTIONAL
                    EsRateInPes =>
                      'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                    ForceTsVideoEbpOrder =>
                      'FORCE',      # values: FORCE, DEFAULT; OPTIONAL
                    FragmentTime   => 1,        # OPTIONAL
                    MaxPcrInterval => 1,        # max: 500; OPTIONAL
                    MinEbpInterval => 1,        # max: 10000; OPTIONAL
                    NielsenId3     => 'INSERT', # values: INSERT, NONE; OPTIONAL
                    NullPacketBitrate => 1,     # OPTIONAL
                    PatInterval       => 1,     # max: 1000; OPTIONAL
                    PcrControl => 'PCR_EVERY_PES_PACKET'
                    , # values: PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD; OPTIONAL
                    PcrPid             => 1,        # min: 32, max: 8182
                    PmtInterval        => 1,        # max: 1000; OPTIONAL
                    PmtPid             => 1,        # min: 32, max: 8182
                    PrivateMetadataPid => 1,        # min: 32, max: 8182
                    ProgramNumber      => 1,        # max: 65535; OPTIONAL
                    RateMode           => 'VBR',    # values: VBR, CBR; OPTIONAL
                    Scte35Pid          => 1,        # min: 32, max: 8182
                    Scte35Source =>
                      'PASSTHROUGH',    # values: PASSTHROUGH, NONE; OPTIONAL
                    SegmentationMarkers => 'NONE'
                    , # values: NONE, RAI_SEGSTART, RAI_ADAPT, PSI_SEGSTART, EBP, EBP_LEGACY; OPTIONAL
                    SegmentationStyle => 'MAINTAIN_CADENCE'
                    ,    # values: MAINTAIN_CADENCE, RESET_CADENCE; OPTIONAL
                    SegmentationTime  => 1,    # OPTIONAL
                    TimedMetadataPid  => 1,    # min: 32, max: 8182
                    TransportStreamId => 1,    # max: 65535; OPTIONAL
                    VideoPid          => 1,    # min: 32, max: 8182
                  },    # OPTIONAL
                  M3u8Settings => {
                    AudioFramesPerPes => 1,    # max: 2147483647; OPTIONAL
                    AudioPids         => [
                      1, ...                   # min: 32, max: 8182
                    ],                         # OPTIONAL
                    NielsenId3  => 'INSERT',   # values: INSERT, NONE; OPTIONAL
                    PatInterval => 1,          # max: 1000; OPTIONAL
                    PcrControl => 'PCR_EVERY_PES_PACKET'
                    , # values: PCR_EVERY_PES_PACKET, CONFIGURED_PCR_PERIOD; OPTIONAL
                    PcrPid             => 1,    # min: 32, max: 8182
                    PmtInterval        => 1,    # max: 1000; OPTIONAL
                    PmtPid             => 1,    # min: 32, max: 8182
                    PrivateMetadataPid => 1,    # min: 32, max: 8182
                    ProgramNumber      => 1,    # max: 65535; OPTIONAL
                    Scte35Pid          => 1,    # min: 32, max: 8182
                    Scte35Source =>
                      'PASSTHROUGH',    # values: PASSTHROUGH, NONE; OPTIONAL
                    TimedMetadata =>
                      'PASSTHROUGH',    # values: PASSTHROUGH, NONE; OPTIONAL
                    TimedMetadataPid  => 1,    # min: 32, max: 8182
                    TransportStreamId => 1,    # max: 65535; OPTIONAL
                    VideoPid          => 1,    # min: 32, max: 8182
                  },    # OPTIONAL
                  MovSettings => {
                    ClapAtom => 'INCLUDE',  # values: INCLUDE, EXCLUDE; OPTIONAL
                    CslgAtom => 'INCLUDE',  # values: INCLUDE, EXCLUDE; OPTIONAL
                    Mpeg2FourCCControl =>
                      'XDCAM',              # values: XDCAM, MPEG; OPTIONAL
                    PaddingControl => 'OMNEON', # values: OMNEON, NONE; OPTIONAL
                    Reference => 'SELF_CONTAINED'
                    ,    # values: SELF_CONTAINED, EXTERNAL; OPTIONAL
                  },    # OPTIONAL
                  Mp4Settings => {
                    CslgAtom => 'INCLUDE',  # values: INCLUDE, EXCLUDE; OPTIONAL
                    FreeSpaceBox =>
                      'INCLUDE',            # values: INCLUDE, EXCLUDE; OPTIONAL
                    MoovPlacement => 'PROGRESSIVE_DOWNLOAD'
                    ,    # values: PROGRESSIVE_DOWNLOAD, NORMAL; OPTIONAL
                    Mp4MajorBrand => 'My__string',
                  },    # OPTIONAL
                },    # OPTIONAL
                Extension      => 'My__string',
                NameModifier   => 'My__stringMin1',    # min: 1; OPTIONAL
                OutputSettings => {
                  HlsSettings => {
                    AudioGroupId       => 'My__string',
                    AudioRenditionSets => 'My__string',
                    AudioTrackType     => 'ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT'
                    , # values: ALTERNATE_AUDIO_AUTO_SELECT_DEFAULT, ALTERNATE_AUDIO_AUTO_SELECT, ALTERNATE_AUDIO_NOT_AUTO_SELECT, AUDIO_ONLY_VARIANT_STREAM; OPTIONAL
                    IFrameOnlyManifest =>
                      'INCLUDE',    # values: INCLUDE, EXCLUDE; OPTIONAL
                    SegmentModifier => 'My__string',
                  },    # OPTIONAL
                },    # OPTIONAL
                Preset           => 'My__stringMin0',    # OPTIONAL
                VideoDescription => {
                  AfdSignaling => 'NONE',  # values: NONE, AUTO, FIXED; OPTIONAL
                  AntiAlias => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                  CodecSettings => {
                    Codec => 'FRAME_CAPTURE'
                    , # values: FRAME_CAPTURE, H_264, H_265, MPEG2, PRORES; OPTIONAL
                    FrameCaptureSettings => {
                      FramerateDenominator =>
                        1,    # min: 1, max: 2147483647; OPTIONAL
                      FramerateNumerator =>
                        1,    # min: 1, max: 2147483647; OPTIONAL
                      MaxCaptures => 1,    # min: 1, max: 10000000; OPTIONAL
                      Quality     => 1,    # min: 1, max: 100; OPTIONAL
                    },    # OPTIONAL
                    H264Settings => {
                      AdaptiveQuantization => 'OFF'
                      ,  # values: OFF, LOW, MEDIUM, HIGH, HIGHER, MAX; OPTIONAL
                      Bitrate    => 1,    # min: 1000, max: 1152000000; OPTIONAL
                      CodecLevel => 'AUTO'
                      , # values: AUTO, LEVEL_1, LEVEL_1_1, LEVEL_1_2, LEVEL_1_3, LEVEL_2, LEVEL_2_1, LEVEL_2_2, LEVEL_3, LEVEL_3_1, LEVEL_3_2, LEVEL_4, LEVEL_4_1, LEVEL_4_2, LEVEL_5, LEVEL_5_1, LEVEL_5_2; OPTIONAL
                      CodecProfile => 'BASELINE'
                      , # values: BASELINE, HIGH, HIGH_10BIT, HIGH_422, HIGH_422_10BIT, MAIN; OPTIONAL
                      DynamicSubGop =>
                        'ADAPTIVE',    # values: ADAPTIVE, STATIC; OPTIONAL
                      EntropyEncoding =>
                        'CABAC',       # values: CABAC, CAVLC; OPTIONAL
                      FieldEncoding =>
                        'PAFF',        # values: PAFF, FORCE_FIELD; OPTIONAL
                      FlickerAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      ,    # values: DUPLICATE_DROP, INTERPOLATE; OPTIONAL
                      FramerateDenominator =>
                        1,    # min: 1, max: 2147483647; OPTIONAL
                      FramerateNumerator =>
                        1,    # min: 1, max: 2147483647; OPTIONAL
                      GopBReference =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      GopClosedCadence => 1,    # max: 2147483647; OPTIONAL
                      GopSize          => 1,    # OPTIONAL
                      GopSizeUnits =>
                        'FRAMES',    # values: FRAMES, SECONDS; OPTIONAL
                      HrdBufferInitialFillPercentage => 1,  # max: 100; OPTIONAL
                      HrdBufferSize => 1,            # max: 1152000000; OPTIONAL
                      InterlaceMode => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      MaxBitrate   => 1,  # min: 1000, max: 1152000000; OPTIONAL
                      MinIInterval => 1,  # max: 30; OPTIONAL
                      NumberBFramesBetweenReferenceFrames =>
                        1,                # max: 7; OPTIONAL
                      NumberReferenceFrames => 1,    # min: 1, max: 6; OPTIONAL
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      ParDenominator => 1,   # min: 1, max: 2147483647; OPTIONAL
                      ParNumerator   => 1,   # min: 1, max: 2147483647; OPTIONAL
                      QualityTuningLevel => 'SINGLE_PASS'
                      , # values: SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ; OPTIONAL
                      QvbrSettings => {
                        MaxAverageBitrate =>
                          1,    # min: 1000, max: 1152000000; OPTIONAL
                        QvbrQualityLevel => 1,    # min: 1, max: 10; OPTIONAL
                      },    # OPTIONAL
                      RateControlMode =>
                        'VBR',    # values: VBR, CBR, QVBR; OPTIONAL
                      RepeatPps =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      SceneChangeDetect =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Slices => 1,     # min: 1, max: 32; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Softness => 1,   # max: 128; OPTIONAL
                      SpatialAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Syntax => 'DEFAULT',   # values: DEFAULT, RP2027; OPTIONAL
                      Telecine => 'NONE',   # values: NONE, SOFT, HARD; OPTIONAL
                      TemporalAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      UnregisteredSeiTimecode =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                    },    # OPTIONAL
                    H265Settings => {
                      AdaptiveQuantization => 'OFF'
                      ,  # values: OFF, LOW, MEDIUM, HIGH, HIGHER, MAX; OPTIONAL
                      AlternateTransferFunctionSei =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Bitrate    => 1,    # min: 1000, max: 1466400000; OPTIONAL
                      CodecLevel => 'AUTO'
                      , # values: AUTO, LEVEL_1, LEVEL_2, LEVEL_2_1, LEVEL_3, LEVEL_3_1, LEVEL_4, LEVEL_4_1, LEVEL_5, LEVEL_5_1, LEVEL_5_2, LEVEL_6, LEVEL_6_1, LEVEL_6_2; OPTIONAL
                      CodecProfile => 'MAIN_MAIN'
                      , # values: MAIN_MAIN, MAIN_HIGH, MAIN10_MAIN, MAIN10_HIGH, MAIN_422_8BIT_MAIN, MAIN_422_8BIT_HIGH, MAIN_422_10BIT_MAIN, MAIN_422_10BIT_HIGH; OPTIONAL
                      DynamicSubGop =>
                        'ADAPTIVE',    # values: ADAPTIVE, STATIC; OPTIONAL
                      FlickerAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      ,    # values: DUPLICATE_DROP, INTERPOLATE; OPTIONAL
                      FramerateDenominator =>
                        1,    # min: 1, max: 2147483647; OPTIONAL
                      FramerateNumerator =>
                        1,    # min: 1, max: 2147483647; OPTIONAL
                      GopBReference =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      GopClosedCadence => 1,    # max: 2147483647; OPTIONAL
                      GopSize          => 1,    # OPTIONAL
                      GopSizeUnits =>
                        'FRAMES',    # values: FRAMES, SECONDS; OPTIONAL
                      HrdBufferInitialFillPercentage => 1,  # max: 100; OPTIONAL
                      HrdBufferSize => 1,            # max: 1466400000; OPTIONAL
                      InterlaceMode => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      MaxBitrate   => 1,  # min: 1000, max: 1466400000; OPTIONAL
                      MinIInterval => 1,  # max: 30; OPTIONAL
                      NumberBFramesBetweenReferenceFrames =>
                        1,                # max: 7; OPTIONAL
                      NumberReferenceFrames => 1,    # min: 1, max: 6; OPTIONAL
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      ParDenominator => 1,   # min: 1, max: 2147483647; OPTIONAL
                      ParNumerator   => 1,   # min: 1, max: 2147483647; OPTIONAL
                      QualityTuningLevel => 'SINGLE_PASS'
                      , # values: SINGLE_PASS, SINGLE_PASS_HQ, MULTI_PASS_HQ; OPTIONAL
                      QvbrSettings => {
                        MaxAverageBitrate =>
                          1,    # min: 1000, max: 1466400000; OPTIONAL
                        QvbrQualityLevel => 1,    # min: 1, max: 10; OPTIONAL
                      },    # OPTIONAL
                      RateControlMode =>
                        'VBR',    # values: VBR, CBR, QVBR; OPTIONAL
                      SampleAdaptiveOffsetFilterMode =>
                        'DEFAULT',    # values: DEFAULT, ADAPTIVE, OFF; OPTIONAL
                      SceneChangeDetect =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Slices => 1,     # min: 1, max: 32; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      SpatialAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Telecine => 'NONE',   # values: NONE, SOFT, HARD; OPTIONAL
                      TemporalAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      TemporalIds =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Tiles => 'DISABLED', # values: DISABLED, ENABLED; OPTIONAL
                      UnregisteredSeiTimecode =>
                        'DISABLED',        # values: DISABLED, ENABLED; OPTIONAL
                      WriteMp4PackagingType =>
                        'HVC1',            # values: HVC1, HEV1; OPTIONAL
                    },    # OPTIONAL
                    Mpeg2Settings => {
                      AdaptiveQuantization =>
                        'OFF',    # values: OFF, LOW, MEDIUM, HIGH; OPTIONAL
                      Bitrate    => 1,     # min: 1000, max: 288000000; OPTIONAL
                      CodecLevel => 'AUTO'
                      ,    # values: AUTO, LOW, MAIN, HIGH1440, HIGH; OPTIONAL
                      CodecProfile =>
                        'MAIN',    # values: MAIN, PROFILE_422; OPTIONAL
                      DynamicSubGop =>
                        'ADAPTIVE',    # values: ADAPTIVE, STATIC; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      ,    # values: DUPLICATE_DROP, INTERPOLATE; OPTIONAL
                      FramerateDenominator => 1, # min: 1, max: 1001; OPTIONAL
                      FramerateNumerator   => 1, # min: 24, max: 60000; OPTIONAL
                      GopClosedCadence     => 1, # max: 2147483647; OPTIONAL
                      GopSize              => 1, # OPTIONAL
                      GopSizeUnits =>
                        'FRAMES',    # values: FRAMES, SECONDS; OPTIONAL
                      HrdBufferInitialFillPercentage => 1,  # max: 100; OPTIONAL
                      HrdBufferSize => 1,              # max: 47185920; OPTIONAL
                      InterlaceMode => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      IntraDcPrecision => 'AUTO'
                      , # values: AUTO, INTRA_DC_PRECISION_8, INTRA_DC_PRECISION_9, INTRA_DC_PRECISION_10, INTRA_DC_PRECISION_11; OPTIONAL
                      MaxBitrate   => 1,   # min: 1000, max: 300000000; OPTIONAL
                      MinIInterval => 1,   # max: 30; OPTIONAL
                      NumberBFramesBetweenReferenceFrames =>
                        1,                 # max: 7; OPTIONAL
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      ParDenominator => 1,   # min: 1, max: 2147483647; OPTIONAL
                      ParNumerator   => 1,   # min: 1, max: 2147483647; OPTIONAL
                      QualityTuningLevel => 'SINGLE_PASS'
                      ,    # values: SINGLE_PASS, MULTI_PASS; OPTIONAL
                      RateControlMode => 'VBR',    # values: VBR, CBR; OPTIONAL
                      SceneChangeDetect =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Softness => 1,   # max: 128; OPTIONAL
                      SpatialAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Syntax => 'DEFAULT',    # values: DEFAULT, D_10; OPTIONAL
                      Telecine => 'NONE',   # values: NONE, SOFT, HARD; OPTIONAL
                      TemporalAdaptiveQuantization =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                    },    # OPTIONAL
                    ProresSettings => {
                      CodecProfile => 'APPLE_PRORES_422'
                      , # values: APPLE_PRORES_422, APPLE_PRORES_422_HQ, APPLE_PRORES_422_LT, APPLE_PRORES_422_PROXY; OPTIONAL
                      FramerateControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      FramerateConversionAlgorithm => 'DUPLICATE_DROP'
                      ,    # values: DUPLICATE_DROP, INTERPOLATE; OPTIONAL
                      FramerateDenominator =>
                        1,    # min: 1, max: 2147483647; OPTIONAL
                      FramerateNumerator =>
                        1,    # min: 1, max: 2147483647; OPTIONAL
                      InterlaceMode => 'PROGRESSIVE'
                      , # values: PROGRESSIVE, TOP_FIELD, BOTTOM_FIELD, FOLLOW_TOP_FIELD, FOLLOW_BOTTOM_FIELD; OPTIONAL
                      ParControl => 'INITIALIZE_FROM_SOURCE'
                      ,    # values: INITIALIZE_FROM_SOURCE, SPECIFIED; OPTIONAL
                      ParDenominator => 1,   # min: 1, max: 2147483647; OPTIONAL
                      ParNumerator   => 1,   # min: 1, max: 2147483647; OPTIONAL
                      SlowPal =>
                        'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                      Telecine => 'NONE',    # values: NONE, HARD; OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  ColorMetadata => 'IGNORE',  # values: IGNORE, INSERT; OPTIONAL
                  Crop          => {
                    Height => 1,    # min: 2, max: 2147483647; OPTIONAL
                    Width  => 1,    # min: 2, max: 2147483647; OPTIONAL
                    X      => 1,    # max: 2147483647; OPTIONAL
                    Y      => 1,    # max: 2147483647; OPTIONAL
                  },    # OPTIONAL
                  DropFrameTimecode =>
                    'DISABLED',    # values: DISABLED, ENABLED; OPTIONAL
                  FixedAfd => 1,   # max: 15; OPTIONAL
                  Height   => 1,   # min: 32, max: 2160; OPTIONAL
                  Position => {
                    Height => 1,    # min: 2, max: 2147483647; OPTIONAL
                    Width  => 1,    # min: 2, max: 2147483647; OPTIONAL
                    X      => 1,    # max: 2147483647; OPTIONAL
                    Y      => 1,    # max: 2147483647; OPTIONAL
                  },    # OPTIONAL
                  RespondToAfd =>
                    'NONE',    # values: NONE, RESPOND, PASSTHROUGH; OPTIONAL
                  ScalingBehavior =>
                    'DEFAULT',    # values: DEFAULT, STRETCH_TO_OUTPUT; OPTIONAL
                  Sharpness => 1, # max: 100; OPTIONAL
                  TimecodeInsertion =>
                    'DISABLED',    # values: DISABLED, PIC_TIMING_SEI; OPTIONAL
                  VideoPreprocessors => {
                    ColorCorrector => {
                      Brightness           => 1,    # min: 1, max: 100; OPTIONAL
                      ColorSpaceConversion => 'NONE'
                      , # values: NONE, FORCE_601, FORCE_709, FORCE_HDR10, FORCE_HLG_2020; OPTIONAL
                      Contrast      => 1,    # min: 1, max: 100; OPTIONAL
                      Hdr10Metadata => {
                        BluePrimaryX              => 1,   # max: 50000; OPTIONAL
                        BluePrimaryY              => 1,   # max: 50000; OPTIONAL
                        GreenPrimaryX             => 1,   # max: 50000; OPTIONAL
                        GreenPrimaryY             => 1,   # max: 50000; OPTIONAL
                        MaxContentLightLevel      => 1,   # max: 65535; OPTIONAL
                        MaxFrameAverageLightLevel => 1,   # max: 65535; OPTIONAL
                        MaxLuminance => 1,    # max: 2147483647; OPTIONAL
                        MinLuminance => 1,    # max: 2147483647; OPTIONAL
                        RedPrimaryX  => 1,    # max: 50000; OPTIONAL
                        RedPrimaryY  => 1,    # max: 50000; OPTIONAL
                        WhitePointX  => 1,    # max: 50000; OPTIONAL
                        WhitePointY  => 1,    # max: 50000; OPTIONAL
                      },    # OPTIONAL
                      Hue        => 1,    # min: -180, max: 180; OPTIONAL
                      Saturation => 1,    # min: 1, max: 100; OPTIONAL
                    },    # OPTIONAL
                    Deinterlacer => {
                      Algorithm => 'INTERPOLATE'
                      , # values: INTERPOLATE, INTERPOLATE_TICKER, BLEND, BLEND_TICKER; OPTIONAL
                      Control => 'FORCE_ALL_FRAMES'
                      ,    # values: FORCE_ALL_FRAMES, NORMAL; OPTIONAL
                      Mode => 'DEINTERLACE'
                      , # values: DEINTERLACE, INVERSE_TELECINE, ADAPTIVE; OPTIONAL
                    },    # OPTIONAL
                    ImageInserter => {
                      InsertableImages => [
                        {
                          Duration => 1,    # max: 2147483647; OPTIONAL
                          FadeIn   => 1,    # max: 2147483647; OPTIONAL
                          FadeOut  => 1,    # max: 2147483647; OPTIONAL
                          Height   => 1,    # max: 2147483647; OPTIONAL
                          ImageInserterInput =>
                            'My__stringMin14PatternS3BmpBMPPngPNGTgaTGA'
                          ,                 # min: 14; OPTIONAL
                          ImageX  => 1,     # max: 2147483647; OPTIONAL
                          ImageY  => 1,     # max: 2147483647; OPTIONAL
                          Layer   => 1,     # max: 99; OPTIONAL
                          Opacity => 1,     # max: 100; OPTIONAL
                          StartTime =>
                            'My__stringPattern01D20305D205D',    # OPTIONAL
                          Width => 1,    # max: 2147483647; OPTIONAL
                        },
                        ...
                      ],                 # OPTIONAL
                    },    # OPTIONAL
                    NoiseReducer => {
                      Filter => 'BILATERAL'
                      , # values: BILATERAL, MEAN, GAUSSIAN, LANCZOS, SHARPEN, CONSERVE, SPATIAL; OPTIONAL
                      FilterSettings => {
                        Strength => 1,    # max: 3; OPTIONAL
                      },    # OPTIONAL
                      SpatialFilterSettings => {
                        PostFilterSharpenStrength => 1,    # max: 3; OPTIONAL
                        Speed    => 1,    # min: -2, max: 3; OPTIONAL
                        Strength => 1,    # max: 16; OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    TimecodeBurnin => {
                      FontSize => 1,             # min: 10, max: 48; OPTIONAL
                      Position => 'TOP_CENTER'
                      , # values: TOP_CENTER, TOP_LEFT, TOP_RIGHT, MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT; OPTIONAL
                      Prefix => 'My__stringPattern',    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  Width => 1,    # min: 32, max: 4096; OPTIONAL
                },    # OPTIONAL
              },
              ...
            ],        # OPTIONAL
          },
          ...
        ],            # OPTIONAL
        TimecodeConfig => {
          Anchor => 'My__stringPattern010920405090509092',    # OPTIONAL
          Source =>
            'EMBEDDED',  # values: EMBEDDED, ZEROBASED, SPECIFIEDSTART; OPTIONAL
          Start           => 'My__stringPattern010920405090509092',   # OPTIONAL
          TimestampOffset => 'My__stringPattern0940191020191209301',  # OPTIONAL
        },    # OPTIONAL
        TimedMetadataInsertion => {
          Id3Insertions => [
            {
              Id3      => 'My__stringPatternAZaZ0902',              # OPTIONAL
              Timecode => 'My__stringPattern010920405090509092',    # OPTIONAL
            },
            ...
          ],                                                        # OPTIONAL
        },    # OPTIONAL
      },
      AccelerationSettings => {
        Mode => 'DISABLED',    # values: DISABLED, ENABLED

      },    # OPTIONAL
      BillingTagsSource  => 'QUEUE',                              # OPTIONAL
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


=head2 AccelerationSettings => L<Paws::MediaConvert::AccelerationSettings>

This is a beta feature. If you are interested in using this feature,
please contact AWS customer support.



=head2 BillingTagsSource => Str



Valid values are: C<"QUEUE">, C<"PRESET">, C<"JOB_TEMPLATE">

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

