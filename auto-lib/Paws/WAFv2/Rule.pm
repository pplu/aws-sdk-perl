package Paws::WAFv2::Rule;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::WAFv2::RuleAction');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OverrideAction => (is => 'ro', isa => 'Paws::WAFv2::OverrideAction');
  has Priority => (is => 'ro', isa => 'Int', required => 1);
  has Statement => (is => 'ro', isa => 'Paws::WAFv2::Statement', required => 1);
  has VisibilityConfig => (is => 'ro', isa => 'Paws::WAFv2::VisibilityConfig', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::Rule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::Rule object:

  $service_obj->Method(Att1 => { Action => $value, ..., VisibilityConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

A single rule, which you can use in a WebACL or RuleGroup to identify
web requests that you want to allow, block, or count. Each rule
includes one top-level Statement that AWS WAF uses to identify matching
web requests, and parameters that govern how AWS WAF handles them.

=head1 ATTRIBUTES


=head2 Action => L<Paws::WAFv2::RuleAction>

  The action that AWS WAF should take on a web request when it matches
the rule's statement. Settings at the web ACL level can override the
rule action setting.


=head2 B<REQUIRED> Name => Str

  A friendly name of the rule. You can't change the name of a C<Rule>
after you create it.


=head2 OverrideAction => L<Paws::WAFv2::OverrideAction>

  The action to use to override the rule's C<Action> setting. You can use
no override action, in which case the rule action is in effect, or
count action, in which case, if the rule matches a web request, it only
counts the match.


=head2 B<REQUIRED> Priority => Int

  If you define more than one C<Rule> in a C<WebACL>, AWS WAF evaluates
each request against the C<Rules> in order based on the value of
C<Priority>. AWS WAF processes rules with lower priority first. The
priorities don't need to be consecutive, but they must all be
different.


=head2 B<REQUIRED> Statement => L<Paws::WAFv2::Statement>

  The AWS WAF processing statement for the rule, for example
ByteMatchStatement or SizeConstraintStatement.


=head2 B<REQUIRED> VisibilityConfig => L<Paws::WAFv2::VisibilityConfig>

  Defines and enables Amazon CloudWatch metrics and web request sample
collection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

