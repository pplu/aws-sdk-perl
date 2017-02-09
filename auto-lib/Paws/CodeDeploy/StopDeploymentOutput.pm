
package Paws::CodeDeploy::StopDeploymentOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::StopDeploymentOutput

=head1 ATTRIBUTES


=head2 Status => Str

The status of the stop deployment operation:

=over

=item *

Pending: The stop operation is pending.

=item *

Succeeded: The stop operation was successful.

=back


Valid values are: C<"Pending">, C<"Succeeded">
=head2 StatusMessage => Str

An accompanying status message.


=head2 _request_id => Str


=cut

1;