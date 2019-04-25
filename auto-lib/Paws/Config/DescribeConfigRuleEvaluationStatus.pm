
package Paws::Config::DescribeConfigRuleEvaluationStatus;
  use Moose;
  has ConfigRuleNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigRuleEvaluationStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeConfigRuleEvaluationStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigRuleEvaluationStatus - Arguments for method DescribeConfigRuleEvaluationStatus on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfigRuleEvaluationStatus on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeConfigRuleEvaluationStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfigRuleEvaluationStatus.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeConfigRuleEvaluationStatusResponse =
      $config->DescribeConfigRuleEvaluationStatus(
      ConfigRuleNames => [
        'MyStringWithCharLimit64', ...    # min: 1, max: 64
      ],                                  # OPTIONAL
      Limit     => 1,                     # OPTIONAL
      NextToken => 'MyString',            # OPTIONAL
      );

    # Results:
    my $ConfigRulesEvaluationStatus =
      $DescribeConfigRuleEvaluationStatusResponse->ConfigRulesEvaluationStatus;
    my $NextToken = $DescribeConfigRuleEvaluationStatusResponse->NextToken;

 # Returns a L<Paws::Config::DescribeConfigRuleEvaluationStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeConfigRuleEvaluationStatus>

=head1 ATTRIBUTES


=head2 ConfigRuleNames => ArrayRef[Str|Undef]

The name of the AWS managed Config rules for which you want status
information. If you do not specify any names, AWS Config returns status
information for all AWS managed Config rules that you use.



=head2 Limit => Int

The number of rule evaluation results that you want returned.

This parameter is required if the rule limit for your account is more
than the default of 50 rules.

For information about requesting a rule limit increase, see AWS Config
Limits
(http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config)
in the I<AWS General Reference Guide>.



=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfigRuleEvaluationStatus in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

