# Generated from json/callresult_class.tt

package Paws::WAF::GetWebACLResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_WebACL/;
  has WebACL => (is => 'ro', isa => WAF_WebACL);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'WebACL' => {
                             'class' => 'Paws::WAF::WebACL',
                             'type' => 'WAF_WebACL'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetWebACLResponse

=head1 ATTRIBUTES


=head2 WebACL => WAF_WebACL

Information about the WebACL that you specified in the C<GetWebACL>
request. For more information, see the following topics:

=over

=item *

WebACL: Contains C<DefaultAction>, C<MetricName>, C<Name>, an array of
C<Rule> objects, and C<WebACLId>

=item *

C<DefaultAction> (Data type is WafAction): Contains C<Type>

=item *

C<Rules>: Contains an array of C<ActivatedRule> objects, which contain
C<Action>, C<Priority>, and C<RuleId>

=item *

C<Action>: Contains C<Type>

=back



=head2 _request_id => Str


=cut

1;