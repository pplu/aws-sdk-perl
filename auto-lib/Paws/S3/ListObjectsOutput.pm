
package Paws::S3::ListObjectsOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef Bool Int/;
  use Paws::S3::Types qw/S3_CommonPrefix S3_Object/;
  has CommonPrefixes => (is => 'ro', isa => ArrayRef[S3_CommonPrefix]);
  has Contents => (is => 'ro', isa => ArrayRef[S3_Object]);
  has Delimiter => (is => 'ro', isa => Str);
  has EncodingType => (is => 'ro', isa => Str);
  has IsTruncated => (is => 'ro', isa => Bool);
  has Marker => (is => 'ro', isa => Str);
  has MaxKeys => (is => 'ro', isa => Int);
  has Name => (is => 'ro', isa => Str);
  has NextMarker => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);

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
               'Prefix' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Delimiter' => {
                                'type' => 'Str'
                              },
               'EncodingType' => {
                                   'type' => 'Str'
                                 },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Name' => {
                           'type' => 'Str'
                         },
               'CommonPrefixes' => {
                                     'class' => 'Paws::S3::CommonPrefix',
                                     'type' => 'ArrayRef[S3_CommonPrefix]'
                                   },
               'Marker' => {
                             'type' => 'Str'
                           },
               'MaxKeys' => {
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

Paws::S3::ListObjectsOutput

=head1 ATTRIBUTES


=head2 CommonPrefixes => ArrayRef[S3_CommonPrefix]





=head2 Contents => ArrayRef[S3_Object]





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

