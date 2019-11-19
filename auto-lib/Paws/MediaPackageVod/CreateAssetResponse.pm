
package Paws::MediaPackageVod::CreateAssetResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaPackageVod::Types qw/MediaPackageVod_EgressEndpoint/;
  has Arn => (is => 'ro', isa => Str);
  has EgressEndpoints => (is => 'ro', isa => ArrayRef[MediaPackageVod_EgressEndpoint]);
  has Id => (is => 'ro', isa => Str);
  has PackagingGroupId => (is => 'ro', isa => Str);
  has ResourceId => (is => 'ro', isa => Str);
  has SourceArn => (is => 'ro', isa => Str);
  has SourceRoleArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ResourceId' => 'resourceId',
                       'EgressEndpoints' => 'egressEndpoints',
                       'Id' => 'id',
                       'Arn' => 'arn',
                       'SourceArn' => 'sourceArn',
                       'SourceRoleArn' => 'sourceRoleArn',
                       'PackagingGroupId' => 'packagingGroupId'
                     },
  'types' => {
               'SourceRoleArn' => {
                                    'type' => 'Str'
                                  },
               'PackagingGroupId' => {
                                       'type' => 'Str'
                                     },
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'EgressEndpoints' => {
                                      'class' => 'Paws::MediaPackageVod::EgressEndpoint',
                                      'type' => 'ArrayRef[MediaPackageVod_EgressEndpoint]'
                                    },
               'Id' => {
                         'type' => 'Str'
                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'SourceArn' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::CreateAssetResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the Asset.


=head2 EgressEndpoints => ArrayRef[MediaPackageVod_EgressEndpoint]

The list of egress endpoints available for the Asset.


=head2 Id => Str

The unique identifier for the Asset.


=head2 PackagingGroupId => Str

The ID of the PackagingGroup for the Asset.


=head2 ResourceId => Str

The resource ID to include in SPEKE key requests.


=head2 SourceArn => Str

ARN of the source object in S3.


=head2 SourceRoleArn => Str

The IAM role_arn used to access the source S3 bucket.


=head2 _request_id => Str


=cut

