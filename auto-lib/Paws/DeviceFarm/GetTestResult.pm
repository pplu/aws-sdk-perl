
package Paws::DeviceFarm::GetTestResult;
  use Moose;
  has Test => (is => 'ro', isa => 'Paws::DeviceFarm::Test', traits => ['NameInRequest'], request_name => 'test' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetTestResult

=head1 ATTRIBUTES


=head2 Test => L<Paws::DeviceFarm::Test>

A test condition that is evaluated.


=head2 _request_id => Str


=cut

1;