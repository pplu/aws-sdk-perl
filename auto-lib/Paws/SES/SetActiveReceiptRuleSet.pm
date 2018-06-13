
package Paws::SES::SetActiveReceiptRuleSet;
  use Moose;
  has RuleSetName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetActiveReceiptRuleSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::SetActiveReceiptRuleSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetActiveReceiptRuleSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SetActiveReceiptRuleSet - Arguments for method SetActiveReceiptRuleSet on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetActiveReceiptRuleSet on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method SetActiveReceiptRuleSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetActiveReceiptRuleSet.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # SetActiveReceiptRuleSet
    # The following example sets the active receipt rule set:
    my $SetActiveReceiptRuleSetResponse = $email->SetActiveReceiptRuleSet(
      {
        'RuleSetName' => 'RuleSetToActivate'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/SetActiveReceiptRuleSet>

=head1 ATTRIBUTES


=head2 RuleSetName => Str

The name of the receipt rule set to make active. Setting this value to
null disables all email receiving.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetActiveReceiptRuleSet in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

