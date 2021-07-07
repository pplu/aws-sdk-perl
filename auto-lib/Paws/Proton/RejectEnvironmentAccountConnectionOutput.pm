
package Paws::Proton::RejectEnvironmentAccountConnectionOutput;
  use Moose;
  has EnvironmentAccountConnection => (is => 'ro', isa => 'Paws::Proton::EnvironmentAccountConnection', traits => ['NameInRequest'], request_name => 'environmentAccountConnection' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::RejectEnvironmentAccountConnectionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentAccountConnection => L<Paws::Proton::EnvironmentAccountConnection>

The environment connection account detail data that's returned by AWS
Proton.


=head2 _request_id => Str


=cut

1;