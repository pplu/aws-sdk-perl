
package Paws::DeviceFarm::CreateTestGridProjectResult;
  use Moose;
  has TestGridProject => (is => 'ro', isa => 'Paws::DeviceFarm::TestGridProject', traits => ['NameInRequest'], request_name => 'testGridProject' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateTestGridProjectResult

=head1 ATTRIBUTES


=head2 TestGridProject => L<Paws::DeviceFarm::TestGridProject>

ARN of the Selenium testing project that was created.


=head2 _request_id => Str


=cut

1;