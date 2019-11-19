# Generated from json/callresult_class.tt

package Paws::Rekognition::DeleteCollectionResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Rekognition::Types qw//;
  has StatusCode => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StatusCode' => {
                                 'type' => 'Int'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DeleteCollectionResponse

=head1 ATTRIBUTES


=head2 StatusCode => Int

HTTP status code that indicates the result of the operation.


=head2 _request_id => Str


=cut

1;