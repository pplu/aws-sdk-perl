
package Paws::OpsWorks::DescribeLayersResult;
  use Moose;
  has Layers => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Layer]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeLayersResult

=head1 ATTRIBUTES


=head2 Layers => ArrayRef[L<Paws::OpsWorks::Layer>]

An array of C<Layer> objects that describe the layers.


=head2 _request_id => Str


=cut

1;