
package Paws::RedshiftData::CancelStatementResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::CancelStatementResponse

=head1 ATTRIBUTES


=head2 Status => Bool

A value that indicates whether the cancel statement succeeded (true).


=head2 _request_id => Str


=cut

1;