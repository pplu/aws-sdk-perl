# Generated from json/callresult_class.tt

package Paws::Glue::ListTriggersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has TriggerNames => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TriggerNames' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListTriggersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if the returned list does not contain the last
metric available.


=head2 TriggerNames => ArrayRef[Str|Undef]

The names of all triggers in the account, or the triggers with the
specified tags.


=head2 _request_id => Str


=cut

1;