
package Paws::MediaPackageVod::DescribeAssetResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has EgressEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageVod::EgressEndpoint]', traits => ['NameInRequest'], request_name => 'egressEndpoints');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has PackagingGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packagingGroupId');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceId');
  has SourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceArn');
  has SourceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceRoleArn');
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageVod::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::DescribeAssetResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the Asset.


=head2 CreatedAt => Str

The time the Asset was initially submitted for Ingest.


=head2 EgressEndpoints => ArrayRef[L<Paws::MediaPackageVod::EgressEndpoint>]

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


=head2 Tags => L<Paws::MediaPackageVod::Tags>




=head2 _request_id => Str


=cut

