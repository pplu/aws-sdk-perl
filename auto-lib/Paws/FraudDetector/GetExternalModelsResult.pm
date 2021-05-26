
package Paws::FraudDetector::GetExternalModelsResult;
  use Moose;
  has ExternalModels => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::ExternalModel]', traits => ['NameInRequest'], request_name => 'externalModels' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetExternalModelsResult

=head1 ATTRIBUTES


=head2 ExternalModels => ArrayRef[L<Paws::FraudDetector::ExternalModel>]

Gets the Amazon SageMaker models.


=head2 NextToken => Str

The next page token to be used in subsequent requests.


=head2 _request_id => Str


=cut

1;