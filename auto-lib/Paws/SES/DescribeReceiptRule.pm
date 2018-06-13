
package Paws::SES::DescribeReceiptRule;
  use Moose;
  has RuleName => (is => 'ro', isa => 'Str', required => 1);
  has RuleSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReceiptRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::DescribeReceiptRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeReceiptRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeReceiptRule - Arguments for method DescribeReceiptRule on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReceiptRule on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method DescribeReceiptRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReceiptRule.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # DescribeReceiptRule
    # The following example returns the details of a receipt rule:
    my $DescribeReceiptRuleResponse = $email->DescribeReceiptRule(
      {
        'RuleName'    => 'MyRule',
        'RuleSetName' => 'MyRuleSet'
      }
    );

    # Results:
    my $Rule = $DescribeReceiptRuleResponse->Rule;

    # Returns a L<Paws::SES::DescribeReceiptRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DescribeReceiptRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleName => Str

The name of the receipt rule.



=head2 B<REQUIRED> RuleSetName => Str

The name of the receipt rule set that the receipt rule belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReceiptRule in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

