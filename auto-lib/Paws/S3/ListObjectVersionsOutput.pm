
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





=head2 DeleteMarkers => ArrayRef[L<Paws::S3::DeleteMarkerEntry>]





=head2 Delimiter => Str





=head2 EncodingType => Str

Encoding type used by Amazon S3 to encode object keys in the response.

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





=head2 Name => Str





=head2 NextKeyMarker => Str

Use this value for the key marker request parameter in a subsequent
request.



=head2 NextVersionIdMarker => Str

Use this value for the next version id marker parameter in a subsequent
request.



=head2 Prefix => Str





=head2 VersionIdMarker => Str





=head2 Versions => ArrayRef[L<Paws::S3::ObjectVersion>]






=cut

