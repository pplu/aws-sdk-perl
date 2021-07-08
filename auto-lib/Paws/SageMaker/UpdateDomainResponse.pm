
package Paws::SageMaker::UpdateDomainResponse;
  use Moose;
  has DomainArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateDomainResponse

=head1 ATTRIBUTES


=head2 DomainArn => Str

The Amazon Resource Name (ARN) of the domain.


=head2 _request_id => Str


=cut

1;