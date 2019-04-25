
package Paws::MediaStoreData::GetObjectResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has CacheControl => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Cache-Control');
  has ContentLength => (is => 'ro', isa => 'Int', traits => ['ParamInHeader'], header_name => 'Content-Length');
  has ContentRange => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Range');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has ETag => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'ETag');
  has LastModified => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Last-Modified');
  has StatusCode => (is => 'ro', isa => 'Int', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData::GetObjectResponse

=head1 ATTRIBUTES


=head2 Body => Str

The bytes of the object.


=head2 CacheControl => Str

An optional C<CacheControl> header that allows the caller to control
the object's cache behavior. Headers can be passed in as specified in
the HTTP spec at
https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
(https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9).

Headers with a custom user-defined value are also accepted.


=head2 ContentLength => Int

The length of the object in bytes.


=head2 ContentRange => Str

The range of bytes to retrieve.


=head2 ContentType => Str

The content type of the object.


=head2 ETag => Str

The ETag that represents a unique instance of the object.


=head2 LastModified => Str

The date and time that the object was last modified.


=head2 B<REQUIRED> StatusCode => Int

The HTML status code of the request. Status codes ranging from 200 to
299 indicate success. All other status codes indicate the type of error
that occurred.


=head2 _request_id => Str


=cut

