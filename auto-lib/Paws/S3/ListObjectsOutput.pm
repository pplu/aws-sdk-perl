
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





=head2 Contents => ArrayRef[L<Paws::S3::Object>]





=head2 Delimiter => Str





=head2 EncodingType => Str

Encoding type used by Amazon S3 to encode object keys in the response.

Valid values are: C<"url">

=head2 IsTruncated => Bool

A flag that indicates whether or not Amazon S3 returned all of the
results that satisfied the search criteria.



=head2 Marker => Str





=head2 MaxKeys => Int





=head2 Name => Str





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






=cut

