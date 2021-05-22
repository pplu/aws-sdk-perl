
package Paws::SecurityHub::BatchUpdateFindingsResponse;
  use Moose;
  has ProcessedFindings => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsSecurityFindingIdentifier]', required => 1);
  has UnprocessedFindings => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::BatchUpdateFindingsUnprocessedFinding]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchUpdateFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProcessedFindings => ArrayRef[L<Paws::SecurityHub::AwsSecurityFindingIdentifier>]

The list of findings that were updated successfully.


=head2 B<REQUIRED> UnprocessedFindings => ArrayRef[L<Paws::SecurityHub::BatchUpdateFindingsUnprocessedFinding>]

The list of findings that were not updated.


=head2 _request_id => Str


=cut

