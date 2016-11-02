
package Paws::EMR::DescribeStepOutput;
  use Moose;
  has Step => (is => 'ro', isa => 'Paws::EMR::Step');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeStepOutput

=head1 ATTRIBUTES


=head2 Step => L<Paws::EMR::Step>

The step details for the requested step identifier.


=head2 _request_id => Str


=cut

1;