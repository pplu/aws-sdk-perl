
package Paws::OpsWorks::GrantAccessResult;
  use Moose;
  has TemporaryCredential => (is => 'ro', isa => 'Paws::OpsWorks::TemporaryCredential');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::GrantAccessResult

=head1 ATTRIBUTES


=head2 TemporaryCredential => L<Paws::OpsWorks::TemporaryCredential>

A C<TemporaryCredential> object that contains the data needed to log in
to the instance by RDP clients, such as the Microsoft Remote Desktop
Connection.


=head2 _request_id => Str


=cut

1;