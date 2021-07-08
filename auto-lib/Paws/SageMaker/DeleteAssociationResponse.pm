
package Paws::SageMaker::DeleteAssociationResponse;
  use Moose;
  has DestinationArn => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteAssociationResponse

=head1 ATTRIBUTES


=head2 DestinationArn => Str

The Amazon Resource Name (ARN) of the destination.


=head2 SourceArn => Str

The ARN of the source.


=head2 _request_id => Str


=cut

1;