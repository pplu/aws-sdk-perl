
package Paws::FraudDetector::GetRules;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RuleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleId' );
  has RuleVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleVersion' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::GetRulesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetRules - Arguments for method GetRules on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRules on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method GetRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRules.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $GetRulesResult = $frauddetector->GetRules(
      DetectorId  => 'Myidentifier',
      MaxResults  => 1,                     # OPTIONAL
      NextToken   => 'Mystring',            # OPTIONAL
      RuleId      => 'Myidentifier',        # OPTIONAL
      RuleVersion => 'MynonEmptyString',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $GetRulesResult->NextToken;
    my $RuleDetails = $GetRulesResult->RuleDetails;

    # Returns a L<Paws::FraudDetector::GetRulesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/GetRules>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The detector ID.



=head2 MaxResults => Int

The maximum number of rules to return for the request.



=head2 NextToken => Str

The next page token.



=head2 RuleId => Str

The rule ID.



=head2 RuleVersion => Str

The rule version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRules in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

