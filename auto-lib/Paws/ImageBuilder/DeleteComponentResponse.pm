
package Paws::ImageBuilder::DeleteComponentResponse;
  use Moose;
  has ComponentBuildVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentBuildVersionArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::DeleteComponentResponse

=head1 ATTRIBUTES


=head2 ComponentBuildVersionArn => Str

The Amazon Resource Name (ARN) of the component build version that was
deleted.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

