
package Paws::MediaStoreData::PutObjectResponse;
  use Moose;
  has ContentSHA256 => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str');
  has StorageClass => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData::PutObjectResponse

=head1 ATTRIBUTES


=head2 ContentSHA256 => Str

The SHA256 digest of the object that is persisted.


=head2 ETag => Str

Unique identifier of the object in the container.


=head2 StorageClass => Str

The storage class where the object was persisted. The class should be
E<ldquo>TemporalE<rdquo>.

Valid values are: C<"TEMPORAL">
=head2 _request_id => Str


=cut

