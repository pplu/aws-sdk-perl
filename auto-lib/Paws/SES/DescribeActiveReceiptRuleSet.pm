
package Paws::SES::DescribeActiveReceiptRuleSet;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeActiveReceiptRuleSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::DescribeActiveReceiptRuleSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeActiveReceiptRuleSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeActiveReceiptRuleSet - Arguments for method DescribeActiveReceiptRuleSet on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeActiveReceiptRuleSet on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method DescribeActiveReceiptRuleSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeActiveReceiptRuleSet.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # DescribeActiveReceiptRuleSet
    # The following example returns the metadata and receipt rules for the
    # receipt rule set that is currently active:
    my $DescribeActiveReceiptRuleSetResponse =
      $email->DescribeActiveReceiptRuleSet();

    # Results:
    my $Metadata = $DescribeActiveReceiptRuleSetResponse->Metadata;
    my $Rules    = $DescribeActiveReceiptRuleSetResponse->Rules;

    # Returns a L<Paws::SES::DescribeActiveReceiptRuleSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DescribeActiveReceiptRuleSet>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeActiveReceiptRuleSet in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

