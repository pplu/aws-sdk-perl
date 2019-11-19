
package Paws::MediaStoreData::GetObjectResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  use Types::Standard qw/Str Int/;
  use Paws::MediaStoreData::Types qw//;
  has Body => (is => 'ro', isa => Str);
  has CacheControl => (is => 'ro', isa => Str);
  has ContentLength => (is => 'ro', isa => Int);
  has ContentRange => (is => 'ro', isa => Str);
  has ContentType => (is => 'ro', isa => Str);
  has ETag => (is => 'ro', isa => Str);
  has LastModified => (is => 'ro', isa => Str);
  has StatusCode => (is => 'ro', isa => Int, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'LastModified' => 'Last-Modified',
                       'ETag' => 'ETag',
                       'ContentLength' => 'Content-Length',
                       'ContentRange' => 'Content-Range',
                       'CacheControl' => 'Cache-Control',
                       'ContentType' => 'Content-Type'
                     },
  'IsRequired' => {
                    'StatusCode' => 1
                  },
  'types' => {
               'Body' => {
                           'type' => 'Str'
                         },
               'CacheControl' => {
                                   'type' => 'Str'
                                 },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'StatusCode' => {
                                 'type' => 'Int'
                               },
               'ETag' => {
                           'type' => 'Str'
                         },
               'LastModified' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ContentRange' => {
                                   'type' => 'Str'
                                 },
               'ContentLength' => {
                                    'type' => 'Int'
                                  }
             }
}
;
    return $Params_map;
  }

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

