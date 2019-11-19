
package Paws::MediaPackageVod::DescribePackagingConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackageVod::Types qw/MediaPackageVod_CmafPackage MediaPackageVod_DashPackage MediaPackageVod_MssPackage MediaPackageVod_HlsPackage/;
  has Arn => (is => 'ro', isa => Str);
  has CmafPackage => (is => 'ro', isa => MediaPackageVod_CmafPackage);
  has DashPackage => (is => 'ro', isa => MediaPackageVod_DashPackage);
  has HlsPackage => (is => 'ro', isa => MediaPackageVod_HlsPackage);
  has Id => (is => 'ro', isa => Str);
  has MssPackage => (is => 'ro', isa => MediaPackageVod_MssPackage);
  has PackagingGroupId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HlsPackage' => {
                                 'class' => 'Paws::MediaPackageVod::HlsPackage',
                                 'type' => 'MediaPackageVod_HlsPackage'
                               },
               'PackagingGroupId' => {
                                       'type' => 'Str'
                                     },
               'CmafPackage' => {
                                  'type' => 'MediaPackageVod_CmafPackage',
                                  'class' => 'Paws::MediaPackageVod::CmafPackage'
                                },
               'MssPackage' => {
                                 'class' => 'Paws::MediaPackageVod::MssPackage',
                                 'type' => 'MediaPackageVod_MssPackage'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DashPackage' => {
                                  'class' => 'Paws::MediaPackageVod::DashPackage',
                                  'type' => 'MediaPackageVod_DashPackage'
                                },
               'Id' => {
                         'type' => 'Str'
                       },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'Arn' => 'arn',
                       'CmafPackage' => 'cmafPackage',
                       'HlsPackage' => 'hlsPackage',
                       'MssPackage' => 'mssPackage',
                       'DashPackage' => 'dashPackage',
                       'PackagingGroupId' => 'packagingGroupId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::DescribePackagingConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the PackagingConfiguration.


=head2 CmafPackage => MediaPackageVod_CmafPackage




=head2 DashPackage => MediaPackageVod_DashPackage




=head2 HlsPackage => MediaPackageVod_HlsPackage




=head2 Id => Str

The ID of the PackagingConfiguration.


=head2 MssPackage => MediaPackageVod_MssPackage




=head2 PackagingGroupId => Str

The ID of a PackagingGroup.


=head2 _request_id => Str


=cut

