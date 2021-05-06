
package Paws::DeviceFarm::CreateProjectResult;
  use Moose;
  has Project => (is => 'ro', isa => 'Paws::DeviceFarm::Project', traits => ['NameInRequest'], request_name => 'project' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateProjectResult

=head1 ATTRIBUTES


=head2 Project => L<Paws::DeviceFarm::Project>

The newly created project.


=head2 _request_id => Str


=cut

1;