
package Paws::DeviceFarm::GetTestGridSessionResult;
  use Moose;
  has TestGridSession => (is => 'ro', isa => 'Paws::DeviceFarm::TestGridSession', traits => ['NameInRequest'], request_name => 'testGridSession' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetTestGridSessionResult

=head1 ATTRIBUTES


=head2 TestGridSession => L<Paws::DeviceFarm::TestGridSession>

The TestGridSession that was requested.


=head2 _request_id => Str


=cut

1;