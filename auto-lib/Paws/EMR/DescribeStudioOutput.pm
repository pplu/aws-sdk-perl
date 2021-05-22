
package Paws::EMR::DescribeStudioOutput;
  use Moose;
  has Studio => (is => 'ro', isa => 'Paws::EMR::Studio');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeStudioOutput

=head1 ATTRIBUTES


=head2 Studio => L<Paws::EMR::Studio>

The Amazon EMR Studio details.


=head2 _request_id => Str


=cut

1;