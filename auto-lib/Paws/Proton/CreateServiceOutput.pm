
package Paws::Proton::CreateServiceOutput;
  use Moose;
  has Service => (is => 'ro', isa => 'Paws::Proton::Service', traits => ['NameInRequest'], request_name => 'service' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateServiceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Service => L<Paws::Proton::Service>

The service detail data that's returned by AWS Proton.


=head2 _request_id => Str


=cut

1;