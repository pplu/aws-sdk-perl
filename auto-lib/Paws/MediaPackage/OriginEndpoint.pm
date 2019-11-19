# Generated from default/object.tt
package Paws::MediaPackage::OriginEndpoint;
  use Moo;
  use Types::Standard qw/Str Int Undef ArrayRef/;
  use Paws::MediaPackage::Types qw/MediaPackage_CmafPackage MediaPackage_MssPackage MediaPackage_Tags MediaPackage_HlsPackage MediaPackage_DashPackage/;
  has Arn => (is => 'ro', isa => Str);
  has ChannelId => (is => 'ro', isa => Str);
  has CmafPackage => (is => 'ro', isa => MediaPackage_CmafPackage);
  has DashPackage => (is => 'ro', isa => MediaPackage_DashPackage);
  has Description => (is => 'ro', isa => Str);
  has HlsPackage => (is => 'ro', isa => MediaPackage_HlsPackage);
  has Id => (is => 'ro', isa => Str);
  has ManifestName => (is => 'ro', isa => Str);
  has MssPackage => (is => 'ro', isa => MediaPackage_MssPackage);
  has Origination => (is => 'ro', isa => Str);
  has StartoverWindowSeconds => (is => 'ro', isa => Int);
  has Tags => (is => 'ro', isa => MediaPackage_Tags);
  has TimeDelaySeconds => (is => 'ro', isa => Int);
  has Url => (is => 'ro', isa => Str);
  has Whitelist => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChannelId' => {
                                'type' => 'Str'
                              },
               'TimeDelaySeconds' => {
                                       'type' => 'Int'
                                     },
               'Whitelist' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'Id' => {
                         'type' => 'Str'
                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'type' => 'MediaPackage_Tags',
                           'class' => 'Paws::MediaPackage::Tags'
                         },
               'MssPackage' => {
                                 'type' => 'MediaPackage_MssPackage',
                                 'class' => 'Paws::MediaPackage::MssPackage'
                               },
               'DashPackage' => {
                                  'type' => 'MediaPackage_DashPackage',
                                  'class' => 'Paws::MediaPackage::DashPackage'
                                },
               'Origination' => {
                                  'type' => 'Str'
                                },
               'ManifestName' => {
                                   'type' => 'Str'
                                 },
               'StartoverWindowSeconds' => {
                                             'type' => 'Int'
                                           },
               'CmafPackage' => {
                                  'type' => 'MediaPackage_CmafPackage',
                                  'class' => 'Paws::MediaPackage::CmafPackage'
                                },
               'HlsPackage' => {
                                 'class' => 'Paws::MediaPackage::HlsPackage',
                                 'type' => 'MediaPackage_HlsPackage'
                               },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Url' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'MssPackage' => 'mssPackage',
                       'Tags' => 'tags',
                       'Origination' => 'origination',
                       'DashPackage' => 'dashPackage',
                       'Arn' => 'arn',
                       'Id' => 'id',
                       'Description' => 'description',
                       'HlsPackage' => 'hlsPackage',
                       'Url' => 'url',
                       'ManifestName' => 'manifestName',
                       'StartoverWindowSeconds' => 'startoverWindowSeconds',
                       'CmafPackage' => 'cmafPackage',
                       'ChannelId' => 'channelId',
                       'Whitelist' => 'whitelist',
                       'TimeDelaySeconds' => 'timeDelaySeconds'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::OriginEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::OriginEndpoint object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Whitelist => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::OriginEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An OriginEndpoint resource configuration.

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

  


=head2 Origination => Str

  Control whether origination of video is allowed for this
OriginEndpoint. If set to ALLOW, the OriginEndpoint may by requested,
pursuant to any other form of access control. If set to DENY, the
OriginEndpoint may not be requested. This can be helpful for Live to
VOD harvesting, or for temporarily disabling origination


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



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

