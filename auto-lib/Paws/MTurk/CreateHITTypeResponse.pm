# Generated from json/callresult_class.tt

package Paws::MTurk::CreateHITTypeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MTurk::Types qw//;
  has HITTypeId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HITTypeId' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MTurk::CreateHITTypeResponse

=head1 ATTRIBUTES


=head2 HITTypeId => Str

The ID of the newly registered HIT type.


=head2 _request_id => Str


=cut

1;