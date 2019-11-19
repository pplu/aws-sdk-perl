
package Paws::S3::ListObjectVersionsOutput;
  use Moose;
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::S3::CommonPrefix]');
  has DeleteMarkers => (is => 'ro', isa => 'ArrayRef[Paws::S3::DeleteMarkerEntry]', traits => ['NameInRequest'], request_name => 'DeleteMarker');
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has KeyMarker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NextKeyMarker => (is => 'ro', isa => 'Str');
  has NextVersionIdMarker => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has VersionIdMarker => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Paws::S3::ObjectVersion]', traits => ['NameInRequest'], request_name => 'Version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectVersionsOutput

=head1 ATTRIBUTES


=head2 CommonPrefixes => ArrayRef[L<Paws::S3::CommonPrefix>]

All of the keys rolled up into a common prefix count as a single return
when calculating the number of returns.



=head2 DeleteMarkers => ArrayRef[L<Paws::S3::DeleteMarkerEntry>]

Container for an object that is a delete marker.



=head2 Delimiter => Str

The delimeter grouping the included keys. A delimiter is a character
that you specify to group keys. All keys that contain the same string
between the prefix and the first occurrence of the delimiter are
grouped under a single result element in CommonPrefixes. These groups
are counted as one result against the max-keys limitation. These keys
are not returned elsewhere in the response.



=head2 EncodingType => Str

Encoding type used by Amazon S3 to encode object key names in the XML
response.

If you specify encoding-type request parameter, Amazon S3 includes this
element in the response, and returns encoded key name values in the
following response elements:

C<KeyMarker, NextKeyMarker, Prefix, Key>, and C<Delimiter>.

Valid values are: C<"url">

=head2 IsTruncated => Bool

A flag that indicates whether or not Amazon S3 returned all of the
results that satisfied the search criteria. If your results were
truncated, you can make a follow-up paginated request using the
NextKeyMarker and NextVersionIdMarker response parameters as a starting
place in another request to return the rest of the results.



=head2 KeyMarker => Str

Marks the last Key returned in a truncated response.



=head2 MaxKeys => Int

Specifies the maximum number of objects to return.



=head2 Name => Str

Bucket owner's name.



=head2 NextKeyMarker => Str

When the number of responses exceeds the value of MaxKeys,
NextKeyMarker specifies the first key not returned that satisfies the
search criteria. Use this value for the key-marker request parameter in
a subsequent request.



=head2 NextVersionIdMarker => Str

When the number of responses exceeds the value of MaxKeys,
NextVersionIdMarker specifies the first object version not returned
that satisfies the search criteria. Use this value for the
version-id-marker request parameter in a subsequent request.



=head2 Prefix => Str

Selects objects that start with the value supplied by this parameter.



=head2 VersionIdMarker => Str

Marks the last version of the Key returned in a truncated response.



=head2 Versions => ArrayRef[L<Paws::S3::ObjectVersion>]

Container for version information.




=cut

