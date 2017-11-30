
package Paws::SageMaker::CreateModelOutput;
  use Moose;
  has ModelArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelArn => Str

The ARN of the model created in Amazon SageMaker.


=head2 _request_id => Str


=cut

1;