
package Paws::CloudWatchLogs::StopQueryResponse;
  use Moose;
  has Success => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'success' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::StopQueryResponse

=head1 ATTRIBUTES


=head2 Success => Bool

This is true if the query was stopped by the C<StopQuery> operation.


=head2 _request_id => Str


=cut

1;