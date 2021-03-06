# Generated by default/object.tt
package Paws::WAFV2::OverrideAction;
  use Moose;
  has Count => (is => 'ro', isa => 'Paws::WAFV2::CountAction');
  has None => (is => 'ro', isa => 'Paws::WAFV2::NoneAction');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::OverrideAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::OverrideAction object:

  $service_obj->Method(Att1 => { Count => $value, ..., None => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::OverrideAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

The override action to apply to the rules in a rule group. Used only
for rule statements that reference a rule group, like
C<RuleGroupReferenceStatement> and C<ManagedRuleGroupStatement>.

Set the override action to none to leave the rule actions in effect.
Set it to count to only count matches, regardless of the rule action
settings.

In a Rule, you must specify either this C<OverrideAction> setting or
the rule C<Action> setting, but not both:

=over

=item *

If the rule statement references a rule group, use this override action
setting and not the action setting.

=item *

If the rule statement does not reference a rule group, use the rule
action setting and not this rule override action setting.

=back


=head1 ATTRIBUTES


=head2 Count => L<Paws::WAFV2::CountAction>

Override the rule action setting to count.


=head2 None => L<Paws::WAFV2::NoneAction>

Don't override the rule action setting.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

