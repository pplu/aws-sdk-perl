
package Paws::SageMaker::CreatePresignedDomainUrlResponse;
  use Moose;
  has AuthorizedUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreatePresignedDomainUrlResponse

=head1 ATTRIBUTES


=head2 AuthorizedUrl => Str

The presigned URL.


=head2 _request_id => Str


=cut

1;