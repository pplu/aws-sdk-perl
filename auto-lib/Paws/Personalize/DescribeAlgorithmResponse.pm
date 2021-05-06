
package Paws::Personalize::DescribeAlgorithmResponse;
  use Moose;
  has Algorithm => (is => 'ro', isa => 'Paws::Personalize::Algorithm', traits => ['NameInRequest'], request_name => 'algorithm' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeAlgorithmResponse

=head1 ATTRIBUTES


=head2 Algorithm => L<Paws::Personalize::Algorithm>

A listing of the properties of the algorithm.


=head2 _request_id => Str


=cut

1;