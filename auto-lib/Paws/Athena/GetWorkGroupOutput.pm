
package Paws::Athena::GetWorkGroupOutput;
  use Moose;
  has WorkGroup => (is => 'ro', isa => 'Paws::Athena::WorkGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetWorkGroupOutput

=head1 ATTRIBUTES


=head2 WorkGroup => L<Paws::Athena::WorkGroup>

Information about the workgroup.


=head2 _request_id => Str


=cut

1;