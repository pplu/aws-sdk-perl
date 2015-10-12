
package Paws::Firehose::PutRecordOutput;
  use Moose;
  has RecordId => (is => 'ro', isa => 'Str', required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Firehose::PutRecordOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> RecordId => Str

  The ID of the record.


=cut

1;