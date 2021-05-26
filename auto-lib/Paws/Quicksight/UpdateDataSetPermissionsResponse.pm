
package Paws::Quicksight::UpdateDataSetPermissionsResponse;
  use Moose;
  has DataSetArn => (is => 'ro', isa => 'Str');
  has DataSetId => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateDataSetPermissionsResponse

=head1 ATTRIBUTES


=head2 DataSetArn => Str

The Amazon Resource Name (ARN) of the dataset.


=head2 DataSetId => Str

The ID for the dataset whose permissions you want to update. This ID is
unique per AWS Region for each AWS account.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

