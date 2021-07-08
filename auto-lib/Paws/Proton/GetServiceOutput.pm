
package Paws::Proton::GetServiceOutput;
  use Moose;
  has Service => (is => 'ro', isa => 'Paws::Proton::Service', traits => ['NameInRequest'], request_name => 'service' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetServiceOutput

=head1 ATTRIBUTES


=head2 Service => L<Paws::Proton::Service>

The service detail data that's returned by AWS Proton.


=head2 _request_id => Str


=cut

1;