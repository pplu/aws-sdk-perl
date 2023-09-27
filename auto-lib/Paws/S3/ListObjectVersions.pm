
package Paws::S3::ListObjectVersions;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Delimiter => (is => 'ro', isa => 'Str', query_name => 'delimiter', traits => ['ParamInQuery']);
  has EncodingType => (is => 'ro', isa => 'Str', query_name => 'encoding-type', traits => ['ParamInQuery']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has KeyMarker => (is => 'ro', isa => 'Str', query_name => 'key-marker', traits => ['ParamInQuery']);
  has MaxKeys => (is => 'ro', isa => 'Int', query_name => 'max-keys', traits => ['ParamInQuery']);
  has Prefix => (is => 'ro', isa => 'Str', query_name => 'prefix', traits => ['ParamInQuery']);
  has VersionIdMarker => (is => 'ro', isa => 'Str', query_name => 'version-id-marker', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListObjectVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?versions=');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListObjectVersionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectVersions - Arguments for method ListObjectVersions on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListObjectVersions on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListObjectVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListObjectVersions.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
 # To list object versions
 # The following example return versions of an object with specific key name
 # prefix. The request limits the number of items returned to two. If there are
 # are more than two object version, S3 returns NextToken in the response. You
 # can specify this token value in your next request to fetch next set of object
 # versions.
    my $ListObjectVersionsOutput = $s3->ListObjectVersions(
      'Bucket' => 'examplebucket',
      'Prefix' => 'HappyFace.jpg'
    );

    # Results:
    my $Versions = $ListObjectVersionsOutput->Versions;

    # Returns a L<Paws::S3::ListObjectVersionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListObjectVersions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name that contains the objects.



=head2 Delimiter => Str

A delimiter is a character that you specify to group keys. All keys
that contain the same string between the C<prefix> and the first
occurrence of the delimiter are grouped under a single result element
in CommonPrefixes. These groups are counted as one result against the
max-keys limitation. These keys are not returned elsewhere in the
response.



=head2 EncodingType => Str



Valid values are: C<"url">

=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the bucket is owned by
a different account, the request will fail with an HTTP C<403 (Access
Denied)> error.



=head2 KeyMarker => Str

Specifies the key to start with when listing objects in a bucket.



=head2 MaxKeys => Int

Sets the maximum number of keys returned in the response. By default
the action returns up to 1,000 key names. The response might contain
fewer keys but will never contain more. If additional keys satisfy the
search criteria, but were not returned because max-keys was exceeded,
the response contains E<lt>isTruncatedE<gt>trueE<lt>/isTruncatedE<gt>.
To return the additional keys, see key-marker and version-id-marker.



=head2 Prefix => Str

Use this parameter to select only those keys that begin with the
specified prefix. You can use prefixes to separate a bucket into
different groupings of keys. (You can think of using prefix to make
groups in the same way you'd use a folder in a file system.) You can
use prefix with delimiter to roll up numerous objects into a single
result under CommonPrefixes.



=head2 VersionIdMarker => Str

Specifies the object version you want to start listing from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListObjectVersions in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

