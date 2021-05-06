
package Paws::DeviceFarm::GetTestGridProjectResult;
  use Moose;
  has TestGridProject => (is => 'ro', isa => 'Paws::DeviceFarm::TestGridProject', traits => ['NameInRequest'], request_name => 'testGridProject' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetTestGridProjectResult

=head1 ATTRIBUTES


=head2 TestGridProject => L<Paws::DeviceFarm::TestGridProject>

A TestGridProject.


=head2 _request_id => Str


=cut

1;