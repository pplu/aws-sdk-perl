
package Paws::DeviceFarm::GetSuiteResult;
  use Moose;
  has Suite => (is => 'ro', isa => 'Paws::DeviceFarm::Suite', traits => ['NameInRequest'], request_name => 'suite' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetSuiteResult

=head1 ATTRIBUTES


=head2 Suite => L<Paws::DeviceFarm::Suite>

A collection of one or more tests.


=head2 _request_id => Str


=cut

1;