
package Paws::Quicksight::DeleteAnalysisResponse;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has DeletionTime => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteAnalysisResponse

=head1 ATTRIBUTES


=head2 AnalysisId => Str

The ID of the deleted analysis.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the deleted analysis.


=head2 DeletionTime => Str

The date and time that the analysis is scheduled to be deleted.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

