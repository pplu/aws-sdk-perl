
package Paws::AppSync::UpdateResolverResponse;
  use Moose;
  has Resolver => (is => 'ro', isa => 'Paws::AppSync::Resolver', traits => ['NameInRequest'], request_name => 'resolver');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateResolverResponse

=head1 ATTRIBUTES


=head2 Resolver => L<Paws::AppSync::Resolver>

The updated C<Resolver> object.


=head2 _request_id => Str


=cut

