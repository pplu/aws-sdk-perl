
package Paws::Config::PutExternalEvaluation;
  use Moose;
  has ConfigRuleName => (is => 'ro', isa => 'Str', required => 1);
  has ExternalEvaluation => (is => 'ro', isa => 'Paws::Config::ExternalEvaluation', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutExternalEvaluation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutExternalEvaluationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutExternalEvaluation - Arguments for method PutExternalEvaluation on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutExternalEvaluation on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutExternalEvaluation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutExternalEvaluation.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutExternalEvaluationResponse = $config->PutExternalEvaluation(
      ConfigRuleName     => 'MyConfigRuleName',
      ExternalEvaluation => {
        ComplianceResourceId   => 'MyBaseResourceId',         # min: 1, max: 768
        ComplianceResourceType => 'MyStringWithCharLimit256', # min: 1, max: 256
        ComplianceType         => 'COMPLIANT'
        ,  # values: COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
        OrderingTimestamp => '1970-01-01T01:00:00',
        Annotation        => 'MyStringWithCharLimit256',    # min: 1, max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutExternalEvaluation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigRuleName => Str

The name of the AWS Config rule.



=head2 B<REQUIRED> ExternalEvaluation => L<Paws::Config::ExternalEvaluation>

An C<ExternalEvaluation> object that provides details about compliance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutExternalEvaluation in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

