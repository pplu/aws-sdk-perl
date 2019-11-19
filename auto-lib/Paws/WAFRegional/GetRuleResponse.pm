# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_Rule/;
  has Rule => (is => 'ro', isa => WAFRegional_Rule);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rule' => {
                           'type' => 'WAFRegional_Rule',
                           'class' => 'Paws::WAFRegional::Rule'
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

Paws::WAFRegional::GetRuleResponse

=head1 ATTRIBUTES


=head2 Rule => WAFRegional_Rule

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