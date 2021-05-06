
package Paws::AppSync::UpdateTypeResponse;
  use Moose;
  has Type => (is => 'ro', isa => 'Paws::AppSync::Type', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateTypeResponse

=head1 ATTRIBUTES


=head2 Type => L<Paws::AppSync::Type>

The updated C<Type> object.


=head2 _request_id => Str


=cut

