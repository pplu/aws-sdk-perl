
package Paws::ImportExport::ListJobsOutput;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::ImportExport::Job]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::ListJobsOutput

=head1 ATTRIBUTES


=head2 IsTruncated => Bool




=head2 Jobs => ArrayRef[L<Paws::ImportExport::Job>]




=head2 _request_id => Str


=cut

