
package Paws::DeviceFarm::GetSuiteResult;
  use Moose;
  has Suite => (is => 'ro', isa => 'Paws::DeviceFarm::Suite', traits => ['Unwrapped'], xmlname => 'suite' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetSuiteResult

=head1 ATTRIBUTES


=head2 Suite => L<Paws::DeviceFarm::Suite>






=cut

1;