# Generated from default/object.tt
package Paws::MediaPackage::OriginEndpointUpdateParameters;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::MediaPackage::Types qw/MediaPackage_HlsPackage MediaPackage_CmafPackageCreateOrUpdateParameters MediaPackage_MssPackage MediaPackage_DashPackage/;
  has CmafPackage => (is => 'ro', isa => MediaPackage_CmafPackageCreateOrUpdateParameters);
  has DashPackage => (is => 'ro', isa => MediaPackage_DashPackage);
  has Description => (is => 'ro', isa => Str);
  has HlsPackage => (is => 'ro', isa => MediaPackage_HlsPackage);
  has ManifestName => (is => 'ro', isa => Str);
  has MssPackage => (is => 'ro', isa => MediaPackage_MssPackage);
  has StartoverWindowSeconds => (is => 'ro', isa => Int);
  has TimeDelaySeconds => (is => 'ro', isa => Int);
  has Whitelist => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MssPackage' => {
                                 'class' => 'Paws::MediaPackage::MssPackage',
                                 'type' => 'MediaPackage_MssPackage'
                               },
               'StartoverWindowSeconds' => {
                                             'type' => 'Int'
                                           },
               'DashPackage' => {
                                  'class' => 'Paws::MediaPackage::DashPackage',
                                  'type' => 'MediaPackage_DashPackage'
                                },
               'CmafPackage' => {
                                  'class' => 'Paws::MediaPackage::CmafPackageCreateOrUpdateParameters',
                                  'type' => 'MediaPackage_CmafPackageCreateOrUpdateParameters'
                                },
               'ManifestName' => {
                                   'type' => 'Str'
                                 },
               'TimeDelaySeconds' => {
                                       'type' => 'Int'
                                     },
               'Whitelist' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'HlsPackage' => {
                                 'class' => 'Paws::MediaPackage::HlsPackage',
                                 'type' => 'MediaPackage_HlsPackage'
                               },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'MssPackage' => 'mssPackage',
                       'StartoverWindowSeconds' => 'startoverWindowSeconds',
                       'DashPackage' => 'dashPackage',
                       'CmafPackage' => 'cmafPackage',
                       'ManifestName' => 'manifestName',
                       'TimeDelaySeconds' => 'timeDelaySeconds',
                       'Whitelist' => 'whitelist',
                       'HlsPackage' => 'hlsPackage',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::OriginEndpointUpdateParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::OriginEndpointUpdateParameters object:

  $service_obj->Method(Att1 => { CmafPackage => $value, ..., Whitelist => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::OriginEndpointUpdateParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->CmafPackage

=head1 DESCRIPTION

Configuration parameters for updating an existing OriginEndpoint.

=head1 ATTRIBUTES


=head2 CmafPackage => MediaPackage_CmafPackageCreateOrUpdateParameters

  


=head2 DashPackage => MediaPackage_DashPackage

  


=head2 Description => Str

  A short text description of the OriginEndpoint.


=head2 HlsPackage => MediaPackage_HlsPackage

  


=head2 ManifestName => Str

  A short string that will be appended to the end of the Endpoint URL.


=head2 MssPackage => MediaPackage_MssPackage

  


=head2 StartoverWindowSeconds => Int

  Maximum duration (in seconds) of content to retain for startover
playback. If not specified, startover playback will be disabled for the
OriginEndpoint.


=head2 TimeDelaySeconds => Int

  Amount of delay (in seconds) to enforce on the playback of live
content. If not specified, there will be no time delay in effect for
the OriginEndpoint.


=head2 Whitelist => ArrayRef[Str|Undef]

  A list of source IP CIDR blocks that will be allowed to access the
OriginEndpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

