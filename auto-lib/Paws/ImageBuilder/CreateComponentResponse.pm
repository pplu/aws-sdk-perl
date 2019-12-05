
package Paws::ImageBuilder::CreateComponentResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ComponentBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentBuildVersionArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::CreateComponentResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

CThe idempotency token used to make this request idempotent.


=head2 ComponentBuildVersionArn => Str

CThe Amazon Resource Name (ARN) of the component that was created by
this request.


=head2 RequestId => Str

CThe request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

