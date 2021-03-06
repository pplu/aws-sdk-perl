# Generated by default/object.tt
package Paws::WAFV2::RuleSummary;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::WAFV2::RuleAction');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::RuleSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::RuleSummary object:

  $service_obj->Method(Att1 => { Action => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::RuleSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

High-level information about a Rule, returned by operations like
DescribeManagedRuleGroup. This provides information like the ID, that
you can use to retrieve and manage a C<RuleGroup>, and the ARN, that
you provide to the RuleGroupReferenceStatement to use the rule group in
a Rule.

=head1 ATTRIBUTES


=head2 Action => L<Paws::WAFV2::RuleAction>

The action that WAF should take on a web request when it matches a
rule's statement. Settings at the web ACL level can override the rule
action setting.


=head2 Name => Str

The name of the rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

