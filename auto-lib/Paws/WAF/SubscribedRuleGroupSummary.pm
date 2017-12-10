package Paws::WAF::SubscribedRuleGroupSummary;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RuleGroupId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::SubscribedRuleGroupSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::SubscribedRuleGroupSummary object:

  $service_obj->Method(Att1 => { MetricName => $value, ..., RuleGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::SubscribedRuleGroupSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricName

=head1 DESCRIPTION

A summary of the rule groups you are subscribed to.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricName => Str

  A friendly name or description for the metrics for this C<RuleGroup>.
The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the
name can't contain whitespace. You can't change the name of the metric
after you create the C<RuleGroup>.


=head2 B<REQUIRED> Name => Str

  A friendly name or description of the C<RuleGroup>. You can't change
the name of a C<RuleGroup> after you create it.


=head2 B<REQUIRED> RuleGroupId => Str

  A unique identifier for a C<RuleGroup>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

