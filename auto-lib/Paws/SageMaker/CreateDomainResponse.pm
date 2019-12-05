
package Paws::SageMaker::CreateDomainResponse;
  use Moose;
  has DomainArn => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateDomainResponse

=head1 ATTRIBUTES


=head2 DomainArn => Str

The Amazon Resource Name (ARN) of the created domain.


=head2 Url => Str

The URL to the created domain.


=head2 _request_id => Str


=cut

1;