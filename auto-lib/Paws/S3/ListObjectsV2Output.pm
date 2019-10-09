
package Paws::S3::ListObjectsV2Output;
  use Moo;

  use Types::Standard qw/Str ArrayRef Bool Int/;
  use Paws::S3::Types qw/S3_CommonPrefix S3_Object/;
  has CommonPrefixes => (is => 'ro', isa => ArrayRef[S3_CommonPrefix]);
  has Contents => (is => 'ro', isa => ArrayRef[S3_Object]);
  has ContinuationToken => (is => 'ro', isa => Str);
  has Delimiter => (is => 'ro', isa => Str);
  has EncodingType => (is => 'ro', isa => Str);
  has IsTruncated => (is => 'ro', isa => Bool);
  has KeyCount => (is => 'ro', isa => Int);
  has MaxKeys => (is => 'ro', isa => Int);
  has Name => (is => 'ro', isa => Str);
  has NextContinuationToken => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);
  has StartAfter => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'Contents' => {
                               'class' => 'Paws::S3::Object',
                               'type' => 'ArrayRef[S3_Object]'
                             },
               'NextContinuationToken' => {
                                            'type' => 'Str'
                                          },
               'KeyCount' => {
                               'type' => 'Int'
                             },
               'Prefix' => {
                             'type' => 'Str'
                           },
               'StartAfter' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ContinuationToken' => {
                                        'type' => 'Str'
                                      },
               'Delimiter' => {
                                'type' => 'Str'
                              },
               'EncodingType' => {
                                   'type' => 'Str'
                                 },
               'Name' => {
                           'type' => 'Str'
                         },
               'MaxKeys' => {
                              'type' => 'Int'
                            },
               'CommonPrefixes' => {
                                     'class' => 'Paws::S3::CommonPrefix',
                                     'type' => 'ArrayRef[S3_CommonPrefix]'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectsV2Output

=head1 ATTRIBUTES


=head2 CommonPrefixes => ArrayRef[S3_CommonPrefix]

CommonPrefixes contains all (if there are any) keys between Prefix and
the next occurrence of the string specified by delimiter



=head2 Contents => ArrayRef[S3_Object]

Metadata about each object returned.



=head2 ContinuationToken => Str

ContinuationToken indicates Amazon S3 that the list is being continued
on this bucket with a token. ContinuationToken is obfuscated and is not
a real key



=head2 Delimiter => Str

A delimiter is a character you use to group keys.



=head2 EncodingType => Str

Encoding type used by Amazon S3 to encode object keys in the response.

Valid values are: C<"url">

=head2 IsTruncated => Bool

A flag that indicates whether or not Amazon S3 returned all of the
results that satisfied the search criteria.



=head2 KeyCount => Int

KeyCount is the number of keys returned with this request. KeyCount
will always be less than equals to MaxKeys field. Say you ask for 50
keys, your result will include less than equals 50 keys



=head2 MaxKeys => Int

Sets the maximum number of keys returned in the response. The response
might contain fewer keys but will never contain more.



=head2 Name => Str

Name of the bucket to list.



=head2 NextContinuationToken => Str

NextContinuationToken is sent when isTruncated is true which means
there are more keys in the bucket that can be listed. The next list
requests to Amazon S3 can be continued with this NextContinuationToken.
NextContinuationToken is obfuscated and is not a real key



=head2 Prefix => Str

Limits the response to keys that begin with the specified prefix.



=head2 StartAfter => Str

StartAfter is where you want Amazon S3 to start listing from. Amazon S3
starts listing after this specified key. StartAfter can be any key in
the bucket




=cut

