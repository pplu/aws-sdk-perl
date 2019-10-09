
package Paws::S3::ListObjectVersionsOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef Bool Int/;
  use Paws::S3::Types qw/S3_ObjectVersion S3_CommonPrefix S3_DeleteMarkerEntry/;
  has CommonPrefixes => (is => 'ro', isa => ArrayRef[S3_CommonPrefix]);
  has DeleteMarkers => (is => 'ro', isa => ArrayRef[S3_DeleteMarkerEntry]);
  has Delimiter => (is => 'ro', isa => Str);
  has EncodingType => (is => 'ro', isa => Str);
  has IsTruncated => (is => 'ro', isa => Bool);
  has KeyMarker => (is => 'ro', isa => Str);
  has MaxKeys => (is => 'ro', isa => Int);
  has Name => (is => 'ro', isa => Str);
  has NextKeyMarker => (is => 'ro', isa => Str);
  has NextVersionIdMarker => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);
  has VersionIdMarker => (is => 'ro', isa => Str);
  has Versions => (is => 'ro', isa => ArrayRef[S3_ObjectVersion]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Versions' => {
                               'class' => 'Paws::S3::ObjectVersion',
                               'type' => 'ArrayRef[S3_ObjectVersion]'
                             },
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'DeleteMarkers' => {
                                    'class' => 'Paws::S3::DeleteMarkerEntry',
                                    'type' => 'ArrayRef[S3_DeleteMarkerEntry]'
                                  },
               'VersionIdMarker' => {
                                      'type' => 'Str'
                                    },
               'KeyMarker' => {
                                'type' => 'Str'
                              },
               'NextKeyMarker' => {
                                    'type' => 'Str'
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
               'Name' => {
                           'type' => 'Str'
                         },
               'CommonPrefixes' => {
                                     'class' => 'Paws::S3::CommonPrefix',
                                     'type' => 'ArrayRef[S3_CommonPrefix]'
                                   },
               'MaxKeys' => {
                              'type' => 'Int'
                            },
               'NextVersionIdMarker' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'Versions' => 'Version',
                       'DeleteMarkers' => 'DeleteMarker'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectVersionsOutput

=head1 ATTRIBUTES


=head2 CommonPrefixes => ArrayRef[S3_CommonPrefix]





=head2 DeleteMarkers => ArrayRef[S3_DeleteMarkerEntry]





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





=head2 Versions => ArrayRef[S3_ObjectVersion]






=cut

