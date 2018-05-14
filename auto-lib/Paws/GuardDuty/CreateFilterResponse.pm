
package Paws::GuardDuty::CreateFilterResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateFilterResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the successfully created filter.


=head2 _request_id => Str


=cut

