
package Paws::Quicksight::CreateAnalysisResponse;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has CreationStatus => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateAnalysisResponse

=head1 ATTRIBUTES


=head2 AnalysisId => Str

The ID of the analysis.


=head2 Arn => Str

The ARN for the analysis.


=head2 CreationStatus => Str

The status of the creation of the analysis.

Valid values are: C<"CREATION_IN_PROGRESS">, C<"CREATION_SUCCESSFUL">, C<"CREATION_FAILED">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_SUCCESSFUL">, C<"UPDATE_FAILED">, C<"DELETED">
=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

