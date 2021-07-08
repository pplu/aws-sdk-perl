
package Paws::SageMaker::DescribeHumanTaskUiResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has HumanTaskUiArn => (is => 'ro', isa => 'Str', required => 1);
  has HumanTaskUiName => (is => 'ro', isa => 'Str', required => 1);
  has HumanTaskUiStatus => (is => 'ro', isa => 'Str');
  has UiTemplate => (is => 'ro', isa => 'Paws::SageMaker::UiTemplateInfo', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeHumanTaskUiResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The timestamp when the human task user interface was created.


=head2 B<REQUIRED> HumanTaskUiArn => Str

The Amazon Resource Name (ARN) of the human task user interface (worker
task template).


=head2 B<REQUIRED> HumanTaskUiName => Str

The name of the human task user interface (worker task template).


=head2 HumanTaskUiStatus => Str

The status of the human task user interface (worker task template).
Valid values are listed below.

Valid values are: C<"Active">, C<"Deleting">
=head2 B<REQUIRED> UiTemplate => L<Paws::SageMaker::UiTemplateInfo>




=head2 _request_id => Str


=cut

1;