
package Paws::Connect::CreateUseCaseResponse;
  use Moose;
  has UseCaseArn => (is => 'ro', isa => 'Str');
  has UseCaseId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateUseCaseResponse

=head1 ATTRIBUTES


=head2 UseCaseArn => Str

The Amazon Resource Name (ARN) for the use case.


=head2 UseCaseId => Str

The identifier of the use case.


=head2 _request_id => Str


=cut

