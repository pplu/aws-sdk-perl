package Paws::WAFv2::RuleSummary;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::WAFv2::RuleAction');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::RuleSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::RuleSummary object:

  $service_obj->Method(Att1 => { Action => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::RuleSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

High-level information about a Rule, returned by operations like
DescribeManagedRuleGroup. This provides information like the ID, that
you can use to retrieve and manage a C<RuleGroup>, and the ARN, that
you provide to the RuleGroupReferenceStatement to use the rule group in
a Rule.

=head1 ATTRIBUTES


=head2 Action => L<Paws::WAFv2::RuleAction>

  


=head2 Name => Str

  The name of the rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

