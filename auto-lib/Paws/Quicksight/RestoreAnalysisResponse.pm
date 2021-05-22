
package Paws::Quicksight::RestoreAnalysisResponse;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::RestoreAnalysisResponse

=head1 ATTRIBUTES


=head2 AnalysisId => Str

The ID of the analysis that you're restoring.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the analysis that you're restoring.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

