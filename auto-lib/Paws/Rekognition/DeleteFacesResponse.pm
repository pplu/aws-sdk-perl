# Generated from json/callresult_class.tt

package Paws::Rekognition::DeleteFacesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Rekognition::Types qw//;
  has DeletedFaces => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeletedFaces' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DeleteFacesResponse

=head1 ATTRIBUTES


=head2 DeletedFaces => ArrayRef[Str|Undef]

An array of strings (face IDs) of the faces that were deleted.


=head2 _request_id => Str


=cut

1;