package Paws::WAF::ActivatedRule;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::WAF::WafAction');
  has OverrideAction => (is => 'ro', isa => 'Paws::WAF::WafOverrideAction');
  has Priority => (is => 'ro', isa => 'Int', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::ActivatedRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::ActivatedRule object:

  $service_obj->Method(Att1 => { Action => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::ActivatedRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

The C<ActivatedRule> object in an UpdateWebACL request specifies a
C<Rule> that you want to insert or delete, the priority of the C<Rule>
in the C<WebACL>, and the action that you want AWS WAF to take when a
web request matches the C<Rule> (C<ALLOW>, C<BLOCK>, or C<COUNT>).

To specify whether to insert or delete a C<Rule>, use the C<Action>
parameter in the WebACLUpdate data type.

=head1 ATTRIBUTES


=head2 Action => L<Paws::WAF::WafAction>

  Specifies the action that CloudFront or AWS WAF takes when a web
request matches the conditions in the C<Rule>. Valid values for
C<Action> include the following:

=over

=item *

C<ALLOW>: CloudFront responds with the requested object.

=item *

C<BLOCK>: CloudFront responds with an HTTP 403 (Forbidden) status code.

=item *

C<COUNT>: AWS WAF increments a counter of requests that match the
conditions in the rule and then continues to inspect the web request
based on the remaining rules in the web ACL.

=back

C<ActivatedRule|OverrideAction> applies only when updating or adding a
C<RuleGroup> to a C<WebACL>. In this case you do not use
C<ActivatedRule|Action>. For all other update requests,
C<ActivatedRule|Action> is used instead of
C<ActivatedRule|OverrideAction>.


=head2 OverrideAction => L<Paws::WAF::WafOverrideAction>

  Use the C<OverrideAction> to test your C<RuleGroup>.

Any rule in a C<RuleGroup> can potentially block a request. If you set
the C<OverrideAction> to C<None>, the C<RuleGroup> will block a request
if any individual rule in the C<RuleGroup> matches the request and is
configured to block that request. However if you first want to test the
C<RuleGroup>, set the C<OverrideAction> to C<Count>. The C<RuleGroup>
will then override any block action specified by individual rules
contained within the group. Instead of blocking matching requests,
those requests will be counted. You can view a record of counted
requests using GetSampledRequests.

C<ActivatedRule|OverrideAction> applies only when updating or adding a
C<RuleGroup> to a C<WebACL>. In this case you do not use
C<ActivatedRule|Action>. For all other update requests,
C<ActivatedRule|Action> is used instead of
C<ActivatedRule|OverrideAction>.


=head2 B<REQUIRED> Priority => Int

  Specifies the order in which the C<Rules> in a C<WebACL> are evaluated.
Rules with a lower value for C<Priority> are evaluated before C<Rules>
with a higher value. The value must be a unique integer. If you add
multiple C<Rules> to a C<WebACL>, the values don't need to be
consecutive.


=head2 B<REQUIRED> RuleId => Str

  The C<RuleId> for a C<Rule>. You use C<RuleId> to get more information
about a C<Rule> (see GetRule), update a C<Rule> (see UpdateRule),
insert a C<Rule> into a C<WebACL> or delete a one from a C<WebACL> (see
UpdateWebACL), or delete a C<Rule> from AWS WAF (see DeleteRule).

C<RuleId> is returned by CreateRule and by ListRules.


=head2 Type => Str

  The rule type, either C<REGULAR>, as defined by Rule, C<RATE_BASED>, as
defined by RateBasedRule, or C<GROUP>, as defined by RuleGroup. The
default is REGULAR. Although this field is optional, be aware that if
you try to add a RATE_BASED rule to a web ACL without setting the type,
the UpdateWebACL request will fail because the request tries to add a
REGULAR rule with the specified ID, which does not exist.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

