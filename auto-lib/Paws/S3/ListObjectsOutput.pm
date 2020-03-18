
package Paws::S3::ListObjectsOutput;
  use Moose;
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::S3::CommonPrefix]');
  has Contents => (is => 'ro', isa => 'ArrayRef[Paws::S3::Object]');
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectsOutput

=head1 ATTRIBUTES


=head2 CommonPrefixes => ArrayRef[L<Paws::S3::CommonPrefix>]

All of the keys rolled up in a common prefix count as a single return
when calculating the number of returns.

A response can contain CommonPrefixes only if you specify a delimiter.

CommonPrefixes contains all (if there are any) keys between Prefix and
the next occurrence of the string specified by the delimiter.

CommonPrefixes lists keys that act like subdirectories in the directory
specified by Prefix.

For example, if the prefix is notes/ and the delimiter is a slash (/)
as in notes/summer/july, the common prefix is notes/summer/. All of the
keys that roll up into a common prefix count as a single return when
calculating the number of returns.



=head2 Contents => ArrayRef[L<Paws::S3::Object>]

Metadata about each object returned.



=head2 Delimiter => Str

Causes keys that contain the same string between the prefix and the
first occurrence of the delimiter to be rolled up into a single result
element in the C<CommonPrefixes> collection. These rolled-up keys are
not returned elsewhere in the response. Each rolled-up result counts as
only one return against the C<MaxKeys> value.



=head2 EncodingType => Str

Encoding type used by Amazon S3 to encode object keys in the response.

Valid values are: C<"url">

=head2 IsTruncated => Bool

A flag that indicates whether Amazon S3 returned all of the results
that satisfied the search criteria.



=head2 Marker => Str

Indicates where in the bucket listing begins. Marker is included in the
response if it was sent with the request.



=head2 MaxKeys => Int

The maximum number of keys returned in the response body.



=head2 Name => Str

Bucket name.



=head2 NextMarker => Str

When response is truncated (the IsTruncated element value in the
response is true), you can use the key name in this field as marker in
the subsequent request to get next set of objects. Amazon S3 lists
objects in alphabetical order Note: This element is returned only if
you have delimiter request parameter specified. If response does not
include the NextMaker and it is truncated, you can use the value of the
last Key in the response as the marker in the subsequent request to get
the next set of object keys.



=head2 Prefix => Str

Keys that begin with the indicated prefix.




=cut

