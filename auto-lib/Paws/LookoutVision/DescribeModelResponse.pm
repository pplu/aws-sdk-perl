
package Paws::LookoutVision::DescribeModelResponse;
  use Moose;
  has ModelDescription => (is => 'ro', isa => 'Paws::LookoutVision::ModelDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::DescribeModelResponse

=head1 ATTRIBUTES


=head2 ModelDescription => L<Paws::LookoutVision::ModelDescription>

Contains the description of the model.


=head2 _request_id => Str


=cut

