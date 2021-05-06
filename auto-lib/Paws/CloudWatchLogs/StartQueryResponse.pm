
package Paws::CloudWatchLogs::StartQueryResponse;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::StartQueryResponse

=head1 ATTRIBUTES


=head2 QueryId => Str

The unique ID of the query.


=head2 _request_id => Str


=cut

1;