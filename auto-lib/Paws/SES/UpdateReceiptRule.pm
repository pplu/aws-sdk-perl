
package Paws::SES::UpdateReceiptRule;
  use Moose;
  has Rule => (is => 'ro', isa => 'Paws::SES::ReceiptRule', required => 1);
  has RuleSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateReceiptRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::UpdateReceiptRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateReceiptRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::UpdateReceiptRule - Arguments for method UpdateReceiptRule on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReceiptRule on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method UpdateReceiptRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReceiptRule.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # UpdateReceiptRule
    # The following example updates a receipt rule to use an Amazon S3 action:
    my $UpdateReceiptRuleResponse = $email->UpdateReceiptRule(
      {
        'Rule' => {
          'Actions' => [

            {
              'S3Action' => {
                'BucketName'      => 'MyBucket',
                'ObjectKeyPrefix' => 'email'
              }
            }
          ],
          'Enabled'     => 1,
          'Name'        => 'MyRule',
          'ScanEnabled' => 1,
          'TlsPolicy'   => 'Optional'
        },
        'RuleSetName' => 'MyRuleSet'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/UpdateReceiptRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Rule => L<Paws::SES::ReceiptRule>

A data structure that contains the updated receipt rule information.



=head2 B<REQUIRED> RuleSetName => Str

The name of the receipt rule set that the receipt rule belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReceiptRule in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

