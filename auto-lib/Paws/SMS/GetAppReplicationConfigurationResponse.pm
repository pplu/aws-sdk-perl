
package Paws::SMS::GetAppReplicationConfigurationResponse;
  use Moose;
  has ServerGroupReplicationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ServerGroupReplicationConfiguration]', traits => ['NameInRequest'], request_name => 'serverGroupReplicationConfigurations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetAppReplicationConfigurationResponse

=head1 ATTRIBUTES


=head2 ServerGroupReplicationConfigurations => ArrayRef[L<Paws::SMS::ServerGroupReplicationConfiguration>]

Replication configurations associated with server groups in this
application.


=head2 _request_id => Str


=cut

1;