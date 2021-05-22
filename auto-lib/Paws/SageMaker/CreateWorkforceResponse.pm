
package Paws::SageMaker::CreateWorkforceResponse;
  use Moose;
  has WorkforceArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateWorkforceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkforceArn => Str

The Amazon Resource Name (ARN) of the workforce.


=head2 _request_id => Str


=cut

1;