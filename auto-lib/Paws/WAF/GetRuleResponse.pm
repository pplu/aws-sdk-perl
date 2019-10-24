# Generated from json/callresult_class.tt

package Paws::WAF::GetRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_Rule/;
  has Rule => (is => 'ro', isa => WAF_Rule);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Rule' => {
                           'class' => 'Paws::WAF::Rule',
                           'type' => 'WAF_Rule'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetRuleResponse

=head1 ATTRIBUTES


=head2 Rule => WAF_Rule

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