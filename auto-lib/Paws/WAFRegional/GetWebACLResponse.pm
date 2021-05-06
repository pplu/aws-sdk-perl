
package Paws::WAFRegional::GetWebACLResponse;
  use Moose;
  has WebACL => (is => 'ro', isa => 'Paws::WAFRegional::WebACL');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetWebACLResponse

=head1 ATTRIBUTES


=head2 WebACL => L<Paws::WAFRegional::WebACL>

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