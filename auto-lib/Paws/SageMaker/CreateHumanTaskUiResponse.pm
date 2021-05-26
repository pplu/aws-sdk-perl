
package Paws::SageMaker::CreateHumanTaskUiResponse;
  use Moose;
  has HumanTaskUiArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateHumanTaskUiResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HumanTaskUiArn => Str

The Amazon Resource Name (ARN) of the human review workflow user
interface you create.


=head2 _request_id => Str


=cut

1;