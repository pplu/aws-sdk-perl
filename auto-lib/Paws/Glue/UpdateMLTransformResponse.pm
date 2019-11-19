# Generated from json/callresult_class.tt

package Paws::Glue::UpdateMLTransformResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has TransformId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransformId' => {
                                  'type' => 'Str'
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

Paws::Glue::UpdateMLTransformResponse

=head1 ATTRIBUTES


=head2 TransformId => Str

The unique identifier for the transform that was updated.


=head2 _request_id => Str


=cut

1;