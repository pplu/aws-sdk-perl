
package Paws::MediaStoreData::DescribeObjectResponse;
  use Moose;
  has CacheControl => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Cache-Control');
  has ContentLength => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'Content-Length');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has LastModified => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Last-Modified');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData::DescribeObjectResponse

=head1 ATTRIBUTES


=head2 CacheControl => Str

An optional C<CacheControl> header that allows the caller to control
the object's cache behavior. Headers can be passed in as specified in
the HTTP at
https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
(https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9).

Headers with a custom user-defined value are also accepted.


=head2 ContentLength => Int

The length of the object in bytes.


=head2 ContentType => Str

The content type of the object.


=head2 ETag => Str

The ETag that represents a unique instance of the object.


=head2 LastModified => Str

The date and time that the object was last modified.


=head2 _request_id => Str


=cut

