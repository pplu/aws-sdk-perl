
package Paws::SES::SetReceiptRulePosition;
  use Moose;
  has After => (is => 'ro', isa => 'Str');
  has RuleName => (is => 'ro', isa => 'Str', required => 1);
  has RuleSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetReceiptRulePosition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::SetReceiptRulePositionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetReceiptRulePositionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SetReceiptRulePosition - Arguments for method SetReceiptRulePosition on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetReceiptRulePosition on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method SetReceiptRulePosition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetReceiptRulePosition.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
   # SetReceiptRulePosition
   # The following example sets the position of a receipt rule in a receipt rule
   # set:
    my $SetReceiptRulePositionResponse = $email->SetReceiptRulePosition(
      {
        'After'       => 'PutRuleAfterThisRule',
        'RuleName'    => 'RuleToReposition',
        'RuleSetName' => 'MyRuleSet'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/SetReceiptRulePosition>

=head1 ATTRIBUTES


=head2 After => Str

The name of the receipt rule after which to place the specified receipt
rule.



=head2 B<REQUIRED> RuleName => Str

The name of the receipt rule to reposition.



=head2 B<REQUIRED> RuleSetName => Str

The name of the receipt rule set that contains the receipt rule to
reposition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetReceiptRulePosition in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

