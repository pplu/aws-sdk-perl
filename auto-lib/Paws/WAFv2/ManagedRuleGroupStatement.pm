package Paws::WAFv2::ManagedRuleGroupStatement;
  use Moose;
  has ExcludedRules => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::ExcludedRule]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VendorName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::ManagedRuleGroupStatement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::ManagedRuleGroupStatement object:

  $service_obj->Method(Att1 => { ExcludedRules => $value, ..., VendorName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::ManagedRuleGroupStatement object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludedRules

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

A rule statement used to run the rules that are defined in a managed
rule group. To use this, provide the vendor name and the name of the
rule group in this statement. You can retrieve the required names by
calling ListAvailableManagedRuleGroups.

You can't nest a C<ManagedRuleGroupStatement>, for example for use
inside a C<NotStatement> or C<OrStatement>. It can only be referenced
as a top-level statement within a rule.

=head1 ATTRIBUTES


=head2 ExcludedRules => ArrayRef[L<Paws::WAFv2::ExcludedRule>]

  The rules whose actions are set to C<COUNT> by the web ACL, regardless
of the action that is set on the rule. This effectively excludes the
rule from acting on web requests.


=head2 B<REQUIRED> Name => Str

  The name of the managed rule group. You use this, along with the vendor
name, to identify the rule group.


=head2 B<REQUIRED> VendorName => Str

  The name of the managed rule group vendor. You use this, along with the
rule group name, to identify the rule group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

