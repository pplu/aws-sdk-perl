
package Paws::SageMaker::ListWorkforcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Workforces => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Workforce]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListWorkforcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to resume pagination.


=head2 B<REQUIRED> Workforces => ArrayRef[L<Paws::SageMaker::Workforce>]

A list containing information about your workforce.


=head2 _request_id => Str


=cut

1;