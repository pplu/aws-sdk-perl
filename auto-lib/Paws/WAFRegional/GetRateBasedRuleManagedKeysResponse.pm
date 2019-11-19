# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetRateBasedRuleManagedKeysResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::WAFRegional::Types qw//;
  has ManagedKeys => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'ManagedKeys' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetRateBasedRuleManagedKeysResponse

=head1 ATTRIBUTES


=head2 ManagedKeys => ArrayRef[Str|Undef]

An array of IP addresses that currently are blocked by the specified
RateBasedRule.


=head2 NextMarker => Str

A null value and not currently used.


=head2 _request_id => Str


=cut

1;