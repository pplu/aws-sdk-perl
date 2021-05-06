
package Paws::SageMaker::CreateAlgorithmOutput;
  use Moose;
  has AlgorithmArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAlgorithmOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmArn => Str

The Amazon Resource Name (ARN) of the new algorithm.


=head2 _request_id => Str


=cut

1;