
package Paws::SES::CreateReceiptRuleSet;
  use Moose;
  has RuleSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReceiptRuleSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::CreateReceiptRuleSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReceiptRuleSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::CreateReceiptRuleSet - Arguments for method CreateReceiptRuleSet on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReceiptRuleSet on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method CreateReceiptRuleSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReceiptRuleSet.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # CreateReceiptRuleSet
    # The following example creates an empty receipt rule set:
    my $CreateReceiptRuleSetResponse = $email->CreateReceiptRuleSet(
      {
        'RuleSetName' => 'MyRuleSet'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateReceiptRuleSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleSetName => Str

The name of the rule set to create. The name must:

=over

=item *

This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
underscores (_), or dashes (-).

=item *

Start and end with a letter or number.

=item *

Contain less than 64 characters.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReceiptRuleSet in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

