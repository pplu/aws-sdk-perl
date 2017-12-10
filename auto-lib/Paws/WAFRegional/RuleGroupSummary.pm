package Paws::WAFRegional::RuleGroupSummary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RuleGroupId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::RuleGroupSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::RuleGroupSummary object:

  $service_obj->Method(Att1 => { Name => $value, ..., RuleGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::RuleGroupSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Contains the identifier and the friendly name or description of the
C<RuleGroup>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  A friendly name or description of the RuleGroup. You can't change the
name of a C<RuleGroup> after you create it.


=head2 B<REQUIRED> RuleGroupId => Str

  A unique identifier for a C<RuleGroup>. You use C<RuleGroupId> to get
more information about a C<RuleGroup> (see GetRuleGroup), update a
C<RuleGroup> (see UpdateRuleGroup), insert a C<RuleGroup> into a
C<WebACL> or delete one from a C<WebACL> (see UpdateWebACL), or delete
a C<RuleGroup> from AWS WAF (see DeleteRuleGroup).

C<RuleGroupId> is returned by CreateRuleGroup and by ListRuleGroups.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

