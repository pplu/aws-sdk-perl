
package Paws::SecurityHub::BatchImportFindingsResponse;
  use Moose;
  has FailedCount => (is => 'ro', isa => 'Int', required => 1);
  has FailedFindings => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::ImportFindingsError]');
  has SuccessCount => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchImportFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedCount => Int

The number of findings that cannot be imported.


=head2 FailedFindings => ArrayRef[L<Paws::SecurityHub::ImportFindingsError>]

The list of the findings that cannot be imported.


=head2 B<REQUIRED> SuccessCount => Int

The number of findings that were successfully imported


=head2 _request_id => Str


=cut

