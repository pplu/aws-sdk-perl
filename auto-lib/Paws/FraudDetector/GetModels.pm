
package Paws::FraudDetector::GetModels;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId' );
  has ModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelType' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetModels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::GetModelsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetModels - Arguments for method GetModels on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetModels on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method GetModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetModels.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $GetModelsResult = $frauddetector->GetModels(
      MaxResults => 1,                          # OPTIONAL
      ModelId    => 'Myidentifier',             # OPTIONAL
      ModelType  => 'ONLINE_FRAUD_INSIGHTS',    # OPTIONAL
      NextToken  => 'Mystring',                 # OPTIONAL
    );

    # Results:
    my $Models    = $GetModelsResult->Models;
    my $NextToken = $GetModelsResult->NextToken;

    # Returns a L<Paws::FraudDetector::GetModelsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/GetModels>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum results to return for the request.



=head2 ModelId => Str

The model ID.



=head2 ModelType => Str

The model type.

Valid values are: C<"ONLINE_FRAUD_INSIGHTS">

=head2 NextToken => Str

The next token for the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetModels in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

