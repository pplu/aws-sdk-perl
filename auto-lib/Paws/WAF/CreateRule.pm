
package Paws::WAF::CreateRule;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::CreateRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateRule - Arguments for method CreateRule on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRule on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method CreateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRule.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To create a rule
    # The following example creates a rule named WAFByteHeaderRule.
    my $CreateRuleResponse = $waf->CreateRule(
      {
        'ChangeToken' => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
        'MetricName'  => 'WAFByteHeaderRule',
        'Name'        => 'WAFByteHeaderRule'
      }
    );

    # Results:
    my $ChangeToken = $CreateRuleResponse->ChangeToken;
    my $Rule        = $CreateRuleResponse->Rule;

    # Returns a L<Paws::WAF::CreateRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/CreateRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> MetricName => Str

A friendly name or description for the metrics for this C<Rule>. The
name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name
can't contain white space. You can't change the name of the metric
after you create the C<Rule>.



=head2 B<REQUIRED> Name => Str

A friendly name or description of the Rule. You can't change the name
of a C<Rule> after you create it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRule in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

