
package Paws::MachineLearning::DescribeMLModelsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::MachineLearning::MLModel]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::DescribeMLModelsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The ID of the next page in the paginated results that indicates at
least one more page follows.


=head2 Results => ArrayRef[L<Paws::MachineLearning::MLModel>]

A list of C<MLModel> that meet the search criteria.


=head2 _request_id => Str


=cut

1;