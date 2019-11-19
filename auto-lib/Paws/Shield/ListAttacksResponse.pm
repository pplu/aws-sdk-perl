# Generated from json/callresult_class.tt

package Paws::Shield::ListAttacksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Shield::Types qw/Shield_AttackSummary/;
  has AttackSummaries => (is => 'ro', isa => ArrayRef[Shield_AttackSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'AttackSummaries' => {
                                      'class' => 'Paws::Shield::AttackSummary',
                                      'type' => 'ArrayRef[Shield_AttackSummary]'
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

Paws::Shield::ListAttacksResponse

=head1 ATTRIBUTES


=head2 AttackSummaries => ArrayRef[Shield_AttackSummary]

The attack information for the specified time range.


=head2 NextToken => Str

The token returned by a previous call to indicate that there is more
data available. If not null, more results are available. Pass this
value for the C<NextMarker> parameter in a subsequent call to
C<ListAttacks> to retrieve the next set of items.

AWS WAF might return the list of AttackSummary objects in batches
smaller than the number specified by MaxResults. If there are more
AttackSummary objects to return, AWS WAF will always also return a
C<NextToken>.


=head2 _request_id => Str


=cut

1;