# Generated from json/callresult_class.tt

package Paws::Rekognition::ListCollectionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Rekognition::Types qw//;
  has CollectionIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has FaceModelVersions => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CollectionIds' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'FaceModelVersions' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListCollectionsResponse

=head1 ATTRIBUTES


=head2 CollectionIds => ArrayRef[Str|Undef]

An array of collection IDs.


=head2 FaceModelVersions => ArrayRef[Str|Undef]

Version numbers of the face detection models associated with the
collections in the array C<CollectionIds>. For example, the value of
C<FaceModelVersions[2]> is the version number for the face detection
model used by the collection in C<CollectionId[2]>.


=head2 NextToken => Str

If the result is truncated, the response provides a C<NextToken> that
you can use in the subsequent request to fetch the next set of
collection IDs.


=head2 _request_id => Str


=cut

1;