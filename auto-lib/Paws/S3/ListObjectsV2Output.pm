
package Paws::S3::ListObjectsV2Output;
  use Moose;
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::S3::CommonPrefix]');
  has Contents => (is => 'ro', isa => 'ArrayRef[Paws::S3::Object]');
  has ContinuationToken => (is => 'ro', isa => 'Str');
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has KeyCount => (is => 'ro', isa => 'Int');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NextContinuationToken => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has StartAfter => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectsV2Output

=head1 ATTRIBUTES


=head2 CommonPrefixes => ArrayRef[L<Paws::S3::CommonPrefix>]

All of the keys rolled up into a common prefix count as a single return
when calculating the number of returns.

A response can contain C<CommonPrefixes> only if you specify a
delimiter.

C<CommonPrefixes> contains all (if there are any) keys between
C<Prefix> and the next occurrence of the string specified by a
delimiter.

C<CommonPrefixes> lists keys that act like subdirectories in the
directory specified by C<Prefix>.

For example, if the prefix is C<notes/> and the delimiter is a slash
(C</>) as in C<notes/summer/july>, the common prefix is
C<notes/summer/>. All of the keys that roll up into a common prefix
count as a single return when calculating the number of returns.



=head2 Contents => ArrayRef[L<Paws::S3::Object>]

Metadata about each object returned.



=head2 ContinuationToken => Str

If ContinuationToken was sent with the request, it is included in the
response.



=head2 Delimiter => Str

Causes keys that contain the same string between the prefix and the
first occurrence of the delimiter to be rolled up into a single result
element in the CommonPrefixes collection. These rolled-up keys are not
returned elsewhere in the response. Each rolled-up result counts as
only one return against the C<MaxKeys> value.



=head2 EncodingType => Str

Encoding type used by Amazon S3 to encode object key names in the XML
response.

If you specify the encoding-type request parameter, Amazon S3 includes
this element in the response, and returns encoded key name values in
the following response elements:

C<Delimiter, Prefix, Key,> and C<StartAfter>.

Valid values are: C<"url">

=head2 IsTruncated => Bool

Set to false if all of the results were returned. Set to true if more
keys are available to return. If the number of results exceeds that
specified by MaxKeys, all of the results might not be returned.



=head2 KeyCount => Int

KeyCount is the number of keys returned with this request. KeyCount
will always be less than equals to MaxKeys field. Say you ask for 50
keys, your result will include less than equals 50 keys



=head2 MaxKeys => Int

Sets the maximum number of keys returned in the response. The response
might contain fewer keys but will never contain more.



=head2 Name => Str

Bucket name.

When using this API with an access point, you must direct requests to
the access point hostname. The access point hostname takes the form
I<AccessPointName>-I<AccountId>.s3-accesspoint.I<Region>.amazonaws.com.
When using this operation using an access point through the AWS SDKs,
you provide the access point ARN in place of the bucket name. For more
information about access point ARNs, see Using Access Points
(https://docs.aws.amazon.com/AmazonS3/latest/dev/using-access-points.html)
in the I<Amazon Simple Storage Service Developer Guide>.



=head2 NextContinuationToken => Str

C<NextContinuationToken> is sent when C<isTruncated> is true, which
means there are more keys in the bucket that can be listed. The next
list requests to Amazon S3 can be continued with this
C<NextContinuationToken>. C<NextContinuationToken> is obfuscated and is
not a real key



=head2 Prefix => Str

Keys that begin with the indicated prefix.



=head2 StartAfter => Str

If StartAfter was sent with the request, it is included in the
response.




=cut

