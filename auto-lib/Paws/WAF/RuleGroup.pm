package Paws::WAF::RuleGroup;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RuleGroupId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::RuleGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::RuleGroup object:

  $service_obj->Method(Att1 => { MetricName => $value, ..., RuleGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::RuleGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricName

=head1 DESCRIPTION

A collection of predefined rules that you can add to a web ACL.

Rule groups are subject to the following limits:

=over

=item *

Three rule groups per account. You can request an increase to this
limit by contacting customer support.

=item *

One rule group per web ACL.

=item *

Ten rules per rule group.

=back


=head1 ATTRIBUTES


=head2 MetricName => Str

  A friendly name or description for the metrics for this C<RuleGroup>.
The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the
name can't contain whitespace. You can't change the name of the metric
after you create the C<RuleGroup>.


=head2 Name => Str

  The friendly name or description for the C<RuleGroup>. You can't change
the name of a C<RuleGroup> after you create it.


=head2 B<REQUIRED> RuleGroupId => Str

  A unique identifier for a C<RuleGroup>. You use C<RuleGroupId> to get
more information about a C<RuleGroup> (see GetRuleGroup), update a
C<RuleGroup> (see UpdateRuleGroup), insert a C<RuleGroup> into a
C<WebACL> or delete a one from a C<WebACL> (see UpdateWebACL), or
delete a C<RuleGroup> from AWS WAF (see DeleteRuleGroup).

C<RuleGroupId> is returned by CreateRuleGroup and by ListRuleGroups.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

