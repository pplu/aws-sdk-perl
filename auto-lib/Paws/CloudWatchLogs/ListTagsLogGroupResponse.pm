
package Paws::CloudWatchLogs::ListTagsLogGroupResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CloudWatchLogs::Tags', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListTagsLogGroupResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::CloudWatchLogs::Tags>

The tags for the log group.


=head2 _request_id => Str


=cut

1;