
package Paws::WAFRegional::GetRuleResponse;
  use Moose;
  has Rule => (is => 'ro', isa => 'Paws::WAFRegional::Rule');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetRuleResponse

=head1 ATTRIBUTES


=head2 Rule => L<Paws::WAFRegional::Rule>

Information about the Rule that you specified in the C<GetRule>
request. For more information, see the following topics:

=over

=item *

Rule: Contains C<MetricName>, C<Name>, an array of C<Predicate>
objects, and C<RuleId>

=item *

Predicate: Each C<Predicate> object contains C<DataId>, C<Negated>, and
C<Type>

=back



=head2 _request_id => Str


=cut

1;