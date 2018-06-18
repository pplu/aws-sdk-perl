
package Paws::WAFRegional::CreateRuleGroup;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::CreateRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::CreateRuleGroup - Arguments for method CreateRuleGroup on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRuleGroup on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method CreateRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRuleGroup.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    my $CreateRuleGroupResponse = $waf -regional->CreateRuleGroup(
      ChangeToken => 'MyChangeToken',
      MetricName  => 'MyMetricName',
      Name        => 'MyResourceName',

    );

    # Results:
    my $ChangeToken = $CreateRuleGroupResponse->ChangeToken;
    my $RuleGroup   = $CreateRuleGroupResponse->RuleGroup;

    # Returns a L<Paws::WAFRegional::CreateRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/CreateRuleGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> MetricName => Str

A friendly name or description for the metrics for this C<RuleGroup>.
The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the
name can't contain whitespace. You can't change the name of the metric
after you create the C<RuleGroup>.



=head2 B<REQUIRED> Name => Str

A friendly name or description of the RuleGroup. You can't change
C<Name> after you create a C<RuleGroup>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRuleGroup in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

