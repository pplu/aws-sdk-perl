
package Paws::DeviceFarm::GetJobResult;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::DeviceFarm::Job', traits => ['NameInRequest'], request_name => 'job' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetJobResult

=head1 ATTRIBUTES


=head2 Job => L<Paws::DeviceFarm::Job>






=cut

1;