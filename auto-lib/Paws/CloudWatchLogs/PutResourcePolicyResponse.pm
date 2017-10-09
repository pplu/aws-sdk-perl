
package Paws::CloudWatchLogs::PutResourcePolicyResponse;
  use Moose;
  has ResourcePolicy => (is => 'ro', isa => 'Paws::CloudWatchLogs::ResourcePolicy', traits => ['NameInRequest'], request_name => 'resourcePolicy' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutResourcePolicyResponse

=head1 ATTRIBUTES


=head2 ResourcePolicy => L<Paws::CloudWatchLogs::ResourcePolicy>

The new policy.


=head2 _request_id => Str


=cut

1;