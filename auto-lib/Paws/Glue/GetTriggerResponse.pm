# Generated from json/callresult_class.tt

package Paws::Glue::GetTriggerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_Trigger/;
  has Trigger => (is => 'ro', isa => Glue_Trigger);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Trigger' => {
                              'class' => 'Paws::Glue::Trigger',
                              'type' => 'Glue_Trigger'
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

Paws::Glue::GetTriggerResponse

=head1 ATTRIBUTES


=head2 Trigger => Glue_Trigger

The requested trigger definition.


=head2 _request_id => Str


=cut

1;