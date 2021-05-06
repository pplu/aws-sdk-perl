
package Paws::CloudWatch::DescribeInsightRules;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInsightRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::DescribeInsightRulesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInsightRulesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DescribeInsightRules - Arguments for method DescribeInsightRules on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInsightRules on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method DescribeInsightRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInsightRules.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $DescribeInsightRulesOutput = $monitoring->DescribeInsightRules(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $InsightRules = $DescribeInsightRulesOutput->InsightRules;
    my $NextToken    = $DescribeInsightRulesOutput->NextToken;

    # Returns a L<Paws::CloudWatch::DescribeInsightRulesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/DescribeInsightRules>

=head1 ATTRIBUTES


=head2 MaxResults => Int

This parameter is not currently used. Reserved for future use. If it is
used in the future, the maximum value may be different.



=head2 NextToken => Str

Reserved for future use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInsightRules in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

