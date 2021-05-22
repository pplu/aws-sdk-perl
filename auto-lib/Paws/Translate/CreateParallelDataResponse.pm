
package Paws::Translate::CreateParallelDataResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::CreateParallelDataResponse

=head1 ATTRIBUTES


=head2 Name => Str

The custom name that you assigned to the parallel data resource.


=head2 Status => Str

The status of the parallel data resource. When the resource is ready
for you to use, the status is C<ACTIVE>.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut

1;