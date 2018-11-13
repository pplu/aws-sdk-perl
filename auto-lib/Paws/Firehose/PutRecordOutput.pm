
package Paws::Firehose::PutRecordOutput;
  use Moose;
  has Encrypted => (is => 'ro', isa => 'Bool');
  has RecordId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::PutRecordOutput

=head1 ATTRIBUTES


=head2 Encrypted => Bool

Indicates whether server-side encryption (SSE) was enabled during this
operation.


=head2 B<REQUIRED> RecordId => Str

The ID of the record.


=head2 _request_id => Str


=cut

1;