
package Paws::MediaPackage::UpdateOriginEndpointResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::MediaPackage::Types qw/MediaPackage_HlsPackage MediaPackage_Tags MediaPackage_MssPackage MediaPackage_CmafPackage MediaPackage_DashPackage/;
  has Arn => (is => 'ro', isa => Str);
  has ChannelId => (is => 'ro', isa => Str);
  has CmafPackage => (is => 'ro', isa => MediaPackage_CmafPackage);
  has DashPackage => (is => 'ro', isa => MediaPackage_DashPackage);
  has Description => (is => 'ro', isa => Str);
  has HlsPackage => (is => 'ro', isa => MediaPackage_HlsPackage);
  has Id => (is => 'ro', isa => Str);
  has ManifestName => (is => 'ro', isa => Str);
  has MssPackage => (is => 'ro', isa => MediaPackage_MssPackage);
  has StartoverWindowSeconds => (is => 'ro', isa => Int);
  has Tags => (is => 'ro', isa => MediaPackage_Tags);
  has TimeDelaySeconds => (is => 'ro', isa => Int);
  has Url => (is => 'ro', isa => Str);
  has Whitelist => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MssPackage' => {
                                 'class' => 'Paws::MediaPackage::MssPackage',
                                 'type' => 'MediaPackage_MssPackage'
                               },
               'Id' => {
                         'type' => 'Str'
                       },
               'StartoverWindowSeconds' => {
                                             'type' => 'Int'
                                           },
               'DashPackage' => {
                                  'class' => 'Paws::MediaPackage::DashPackage',
                                  'type' => 'MediaPackage_DashPackage'
                                },
               'ManifestName' => {
                                   'type' => 'Str'
                                 },
               'CmafPackage' => {
                                  'class' => 'Paws::MediaPackage::CmafPackage',
                                  'type' => 'MediaPackage_CmafPackage'
                                },
               'TimeDelaySeconds' => {
                                       'type' => 'Int'
                                     },
               'Whitelist' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ChannelId' => {
                                'type' => 'Str'
                              },
               'HlsPackage' => {
                                 'class' => 'Paws::MediaPackage::HlsPackage',
                                 'type' => 'MediaPackage_HlsPackage'
                               },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Url' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'class' => 'Paws::MediaPackage::Tags',
                           'type' => 'MediaPackage_Tags'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'MssPackage' => 'mssPackage',
                       'Id' => 'id',
                       'StartoverWindowSeconds' => 'startoverWindowSeconds',
                       'DashPackage' => 'dashPackage',
                       'CmafPackage' => 'cmafPackage',
                       'ManifestName' => 'manifestName',
                       'TimeDelaySeconds' => 'timeDelaySeconds',
                       'Whitelist' => 'whitelist',
                       'ChannelId' => 'channelId',
                       'HlsPackage' => 'hlsPackage',
                       'Arn' => 'arn',
                       'Url' => 'url',
                       'Tags' => 'tags',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::UpdateOriginEndpointResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) assigned to the OriginEndpoint.


=head2 ChannelId => Str

The ID of the Channel the OriginEndpoint is associated with.


=head2 CmafPackage => MediaPackage_CmafPackage




=head2 DashPackage => MediaPackage_DashPackage




=head2 Description => Str

A short text description of the OriginEndpoint.


=head2 HlsPackage => MediaPackage_HlsPackage




=head2 Id => Str

The ID of the OriginEndpoint.


=head2 ManifestName => Str

A short string appended to the end of the OriginEndpoint URL.


=head2 MssPackage => MediaPackage_MssPackage




=head2 StartoverWindowSeconds => Int

Maximum duration (seconds) of content to retain for startover playback.
If not specified, startover playback will be disabled for the
OriginEndpoint.


=head2 Tags => MediaPackage_Tags




=head2 TimeDelaySeconds => Int

Amount of delay (seconds) to enforce on the playback of live content.
If not specified, there will be no time delay in effect for the
OriginEndpoint.


=head2 Url => Str

The URL of the packaged OriginEndpoint for consumption.


=head2 Whitelist => ArrayRef[Str|Undef]

A list of source IP CIDR blocks that will be allowed to access the
OriginEndpoint.


=head2 _request_id => Str


=cut

