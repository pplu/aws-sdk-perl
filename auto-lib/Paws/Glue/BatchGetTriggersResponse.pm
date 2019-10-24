# Generated from json/callresult_class.tt

package Paws::Glue::BatchGetTriggersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw/Glue_Trigger/;
  has Triggers => (is => 'ro', isa => ArrayRef[Glue_Trigger]);
  has TriggersNotFound => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Triggers' => {
                               'class' => 'Paws::Glue::Trigger',
                               'type' => 'ArrayRef[Glue_Trigger]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TriggersNotFound' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetTriggersResponse

=head1 ATTRIBUTES


=head2 Triggers => ArrayRef[Glue_Trigger]

A list of trigger definitions.


=head2 TriggersNotFound => ArrayRef[Str|Undef]

A list of names of triggers not found.


=head2 _request_id => Str


=cut

1;