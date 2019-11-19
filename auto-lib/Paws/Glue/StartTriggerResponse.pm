# Generated from json/callresult_class.tt

package Paws::Glue::StartTriggerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
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

Paws::Glue::StartTriggerResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the trigger that was started.


=head2 _request_id => Str


=cut

1;