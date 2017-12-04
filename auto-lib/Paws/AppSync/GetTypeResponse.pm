
package Paws::AppSync::GetTypeResponse;
  use Moose;
  has Type => (is => 'ro', isa => 'Paws::AppSync::Type', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetTypeResponse

=head1 ATTRIBUTES


=head2 Type => L<Paws::AppSync::Type>

The C<Type> object.


=head2 _request_id => Str


=cut

