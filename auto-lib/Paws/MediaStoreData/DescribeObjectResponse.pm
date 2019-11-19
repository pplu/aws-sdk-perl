
package Paws::MediaStoreData::DescribeObjectResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaStoreData::Types qw//;
  has CacheControl => (is => 'ro', isa => Str);
  has ContentLength => (is => 'ro', isa => Int);
  has ContentType => (is => 'ro', isa => Str);
  has ETag => (is => 'ro', isa => Str);
  has LastModified => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'LastModified' => 'Last-Modified',
                       'ETag' => 'ETag',
                       'ContentLength' => 'Content-Length',
                       'CacheControl' => 'Cache-Control',
                       'ContentType' => 'Content-Type'
                     },
  'types' => {
               'CacheControl' => {
                                   'type' => 'Str'
                                 },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'LastModified' => {
                                   'type' => 'Str'
                                 },
               'ETag' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
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

