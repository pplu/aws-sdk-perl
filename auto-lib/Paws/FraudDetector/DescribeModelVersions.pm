
package Paws::FraudDetector::DescribeModelVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId' );
  has ModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelType' );
  has ModelVersionNumber => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelVersionNumber' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModelVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::DescribeModelVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::DescribeModelVersions - Arguments for method DescribeModelVersions on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModelVersions on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method DescribeModelVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModelVersions.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $DescribeModelVersionsResult = $frauddetector->DescribeModelVersions(
      MaxResults         => 1,                          # OPTIONAL
      ModelId            => 'Myidentifier',             # OPTIONAL
      ModelType          => 'ONLINE_FRAUD_INSIGHTS',    # OPTIONAL
      ModelVersionNumber => 'MynonEmptyString',         # OPTIONAL
      NextToken          => 'Mystring',                 # OPTIONAL
    );

    # Results:
    my $ModelVersionDetails = $DescribeModelVersionsResult->ModelVersionDetails;
    my $NextToken           = $DescribeModelVersionsResult->NextToken;

    # Returns a L<Paws::FraudDetector::DescribeModelVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/DescribeModelVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return.



=head2 ModelId => Str

The model ID.



=head2 ModelType => Str

The model type.

Valid values are: C<"ONLINE_FRAUD_INSIGHTS">

=head2 ModelVersionNumber => Str

The model version.



=head2 NextToken => Str

The next token from the previous results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModelVersions in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

