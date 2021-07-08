
package Paws::Quicksight::DescribeAnalysisPermissionsResponse;
  use Moose;
  has AnalysisArn => (is => 'ro', isa => 'Str');
  has AnalysisId => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeAnalysisPermissionsResponse

=head1 ATTRIBUTES


=head2 AnalysisArn => Str

The Amazon Resource Name (ARN) of the analysis whose permissions you're
describing.


=head2 AnalysisId => Str

The ID of the analysis whose permissions you're describing.


=head2 Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A structure that describes the principals and the resource-level
permissions on an analysis.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

