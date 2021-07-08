
package Paws::Personalize::DescribeFilterResponse;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Personalize::Filter', traits => ['NameInRequest'], request_name => 'filter' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeFilterResponse

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Personalize::Filter>

The filter's details.


=head2 _request_id => Str


=cut

1;