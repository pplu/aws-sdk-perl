
package Paws::S3::ListObjectsV2;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContinuationToken => (is => 'ro', isa => 'Str', query_name => 'continuation-token', traits => ['ParamInQuery']);
  has Delimiter => (is => 'ro', isa => 'Str', query_name => 'delimiter', traits => ['ParamInQuery']);
  has EncodingType => (is => 'ro', isa => 'Str', query_name => 'encoding-type', traits => ['ParamInQuery']);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has FetchOwner => (is => 'ro', isa => 'Bool', query_name => 'fetch-owner', traits => ['ParamInQuery']);
  has MaxKeys => (is => 'ro', isa => 'Int', query_name => 'max-keys', traits => ['ParamInQuery']);
  has Prefix => (is => 'ro', isa => 'Str', query_name => 'prefix', traits => ['ParamInQuery']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has StartAfter => (is => 'ro', isa => 'Str', query_name => 'start-after', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListObjectsV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?list-type=2');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListObjectsV2Output');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectsV2 - Arguments for method ListObjectsV2 on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListObjectsV2 on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method ListObjectsV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListObjectsV2.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
   # To get object list
   # The following example retrieves object list. The request specifies max keys
   # to limit response to include only 2 object keys.
    my $ListObjectsV2Output = $s3->ListObjectsV2(
      'Bucket'  => 'examplebucket',
      'MaxKeys' => 2
    );

    # Results:
    my $Contents              = $ListObjectsV2Output->Contents;
    my $IsTruncated           = $ListObjectsV2Output->IsTruncated;
    my $KeyCount              = $ListObjectsV2Output->KeyCount;
    my $MaxKeys               = $ListObjectsV2Output->MaxKeys;
    my $Name                  = $ListObjectsV2Output->Name;
    my $NextContinuationToken = $ListObjectsV2Output->NextContinuationToken;
    my $Prefix                = $ListObjectsV2Output->Prefix;

    # Returns a L<Paws::S3::ListObjectsV2Output> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/ListObjectsV2>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

Bucket name to list.

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



=head2 ContinuationToken => Str

ContinuationToken indicates Amazon S3 that the list is being continued
on this bucket with a token. ContinuationToken is obfuscated and is not
a real key.



=head2 Delimiter => Str

A delimiter is a character you use to group keys.



=head2 EncodingType => Str

Encoding type used by Amazon S3 to encode object keys in the response.

Valid values are: C<"url">

=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the bucket is owned by
a different account, the request will fail with an HTTP C<403 (Access
Denied)> error.



=head2 FetchOwner => Bool

The owner field is not present in listV2 by default, if you want to
return owner field with each key in the result then set the fetch owner
field to true.



=head2 MaxKeys => Int

Sets the maximum number of keys returned in the response. By default
the action returns up to 1,000 key names. The response might contain
fewer keys but will never contain more.



=head2 Prefix => Str

Limits the response to keys that begin with the specified prefix.



=head2 RequestPayer => Str

Confirms that the requester knows that she or he will be charged for
the list objects request in V2 style. Bucket owners need not specify
this parameter in their requests.

Valid values are: C<"requester">

=head2 StartAfter => Str

StartAfter is where you want Amazon S3 to start listing from. Amazon S3
starts listing after this specified key. StartAfter can be any key in
the bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListObjectsV2 in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

