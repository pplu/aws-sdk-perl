
package Paws::S3::ListMultipartUploads;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Delimiter => (is => 'ro', isa => 'Str', query_name => 'delimiter', traits => ['ParamInQuery']);
  has EncodingType => (is => 'ro', isa => 'Str', query_name => 'encoding-type', traits => ['ParamInQuery']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has KeyMarker => (is => 'ro', isa => 'Str', query_name => 'key-marker', traits => ['ParamInQuery']);
  has MaxUploads => (is => 'ro', isa => 'Int', query_name => 'max-uploads', traits => ['ParamInQuery']);
  has Prefix => (is => 'ro', isa => 'Str', query_name => 'prefix', traits => ['ParamInQuery']);
  has UploadIdMarker => (is => 'ro', isa => 'Str', query_name => 'upload-id-marker', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMultipartUploads');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?uploads');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListMultipartUploadsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListMultipartUploads - Arguments for method ListMultipartUploads on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMultipartUploads on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListMultipartUploads.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMultipartUploads.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    # To list in-progress multipart uploads on a bucket
    # The following example lists in-progress multipart uploads on a specific
    # bucket.
    my $ListMultipartUploadsOutput =
      $s3->ListMultipartUploads( 'Bucket' => 'examplebucket' );

    # Results:
    my $Uploads = $ListMultipartUploadsOutput->Uploads;

    # Returns a L<Paws::S3::ListMultipartUploadsOutput> object.
    # List next set of multipart uploads when previous result is truncated
    # The following example specifies the upload-id-marker and key-marker from
    # previous truncated response to retrieve next setup of multipart uploads.
    my $ListMultipartUploadsOutput = $s3->ListMultipartUploads(
      'Bucket'         => 'examplebucket',
      'KeyMarker'      => 'nextkeyfrompreviousresponse',
      'MaxUploads'     => 2,
      'UploadIdMarker' => 'valuefrompreviousresponse'
    );

    # Results:
    my $Bucket             = $ListMultipartUploadsOutput->Bucket;
    my $IsTruncated        = $ListMultipartUploadsOutput->IsTruncated;
    my $KeyMarker          = $ListMultipartUploadsOutput->KeyMarker;
    my $MaxUploads         = $ListMultipartUploadsOutput->MaxUploads;
    my $NextKeyMarker      = $ListMultipartUploadsOutput->NextKeyMarker;
    my $NextUploadIdMarker = $ListMultipartUploadsOutput->NextUploadIdMarker;
    my $UploadIdMarker     = $ListMultipartUploadsOutput->UploadIdMarker;
    my $Uploads            = $ListMultipartUploadsOutput->Uploads;

    # Returns a L<Paws::S3::ListMultipartUploadsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListMultipartUploads>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket to which the multipart upload was initiated.

When using this action with an access point, you must direct requests
to the access point hostname. The access point hostname takes the form
I<AccessPointName>-I<AccountId>.s3-accesspoint.I<Region>.amazonaws.com.
When using this action with an access point through the AWS SDKs, you
provide the access point ARN in place of the bucket name. For more
information about access point ARNs, see Using access points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html)
in the I<Amazon S3 User Guide>.

When using this action with Amazon S3 on Outposts, you must direct
requests to the S3 on Outposts hostname. The S3 on Outposts hostname
takes the form
I<AccessPointName>-I<AccountId>.I<outpostID>.s3-outposts.I<Region>.amazonaws.com.
When using this action using S3 on Outposts through the AWS SDKs, you
provide the Outposts bucket ARN in place of the bucket name. For more
information about S3 on Outposts ARNs, see Using S3 on Outposts
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the I<Amazon S3 User Guide>.



=head2 Delimiter => Str

Character you use to group keys.

All keys that contain the same string between the prefix, if specified,
and the first occurrence of the delimiter after the prefix are grouped
under a single result element, C<CommonPrefixes>. If you don't specify
the prefix parameter, then the substring starts at the beginning of the
key. The keys that are grouped under C<CommonPrefixes> result element
are not returned elsewhere in the response.



=head2 EncodingType => Str



Valid values are: C<"url">

=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the bucket is owned by
a different account, the request will fail with an HTTP C<403 (Access
Denied)> error.



=head2 KeyMarker => Str

Together with upload-id-marker, this parameter specifies the multipart
upload after which listing should begin.

If C<upload-id-marker> is not specified, only the keys
lexicographically greater than the specified C<key-marker> will be
included in the list.

If C<upload-id-marker> is specified, any multipart uploads for a key
equal to the C<key-marker> might also be included, provided those
multipart uploads have upload IDs lexicographically greater than the
specified C<upload-id-marker>.



=head2 MaxUploads => Int

Sets the maximum number of multipart uploads, from 1 to 1,000, to
return in the response body. 1,000 is the maximum number of uploads
that can be returned in a response.



=head2 Prefix => Str

Lists in-progress uploads only for those keys that begin with the
specified prefix. You can use prefixes to separate a bucket into
different grouping of keys. (You can think of using prefix to make
groups in the same way you'd use a folder in a file system.)



=head2 UploadIdMarker => Str

Together with key-marker, specifies the multipart upload after which
listing should begin. If key-marker is not specified, the
upload-id-marker parameter is ignored. Otherwise, any multipart uploads
for a key equal to the key-marker might be included in the list only if
they have an upload ID lexicographically greater than the specified
C<upload-id-marker>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMultipartUploads in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

