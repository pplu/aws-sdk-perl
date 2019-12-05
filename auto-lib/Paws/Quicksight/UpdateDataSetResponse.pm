
package Paws::Quicksight::UpdateDataSetResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has DataSetId => (is => 'ro', isa => 'Str');
  has IngestionArn => (is => 'ro', isa => 'Str');
  has IngestionId => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateDataSetResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the dataset.


=head2 DataSetId => Str

The ID for the dataset that you want to create. This ID is unique per
AWS Region for each AWS account.


=head2 IngestionArn => Str

The ARN for the ingestion, which is triggered as a result of dataset
creation if the import mode is SPICE


=head2 IngestionId => Str

The ID of the ingestion, which is triggered as a result of dataset
creation if the import mode is SPICE


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

