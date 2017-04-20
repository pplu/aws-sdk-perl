
package Paws::DeviceFarm::UpdateProjectResult;
  use Moose;
  has Project => (is => 'ro', isa => 'Paws::DeviceFarm::Project', traits => ['NameInRequest'], request_name => 'project' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateProjectResult

=head1 ATTRIBUTES


=head2 Project => L<Paws::DeviceFarm::Project>

The project you wish to update.


=head2 _request_id => Str


=cut

1;