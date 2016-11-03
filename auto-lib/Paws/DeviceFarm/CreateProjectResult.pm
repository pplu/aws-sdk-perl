
package Paws::DeviceFarm::CreateProjectResult;
  use Moose;
  has Project => (is => 'ro', isa => 'Paws::DeviceFarm::Project', traits => ['NameInRequest'], request_name => 'project' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateProjectResult

=head1 ATTRIBUTES


=head2 Project => L<Paws::DeviceFarm::Project>

The newly created project.




=cut

1;