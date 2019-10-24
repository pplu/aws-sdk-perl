# Generated from json/callresult_class.tt

package Paws::Glue::GetTriggersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_Trigger/;
  has NextToken => (is => 'ro', isa => Str);
  has Triggers => (is => 'ro', isa => ArrayRef[Glue_Trigger]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Triggers' => {
                               'class' => 'Paws::Glue::Trigger',
                               'type' => 'ArrayRef[Glue_Trigger]'
                             },
               'NextToken' => {
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

Paws::Glue::GetTriggersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if not all the requested triggers have yet been
returned.


=head2 Triggers => ArrayRef[Glue_Trigger]

A list of triggers for the specified job.


=head2 _request_id => Str


=cut

1;