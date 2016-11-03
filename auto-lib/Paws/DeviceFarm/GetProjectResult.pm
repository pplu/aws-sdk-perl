
package Paws::DeviceFarm::GetProjectResult;
  use Moose;
  has Project => (is => 'ro', isa => 'Paws::DeviceFarm::Project', traits => ['NameInRequest'], request_name => 'project' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetProjectResult

=head1 ATTRIBUTES


=head2 Project => L<Paws::DeviceFarm::Project>






=cut

1;