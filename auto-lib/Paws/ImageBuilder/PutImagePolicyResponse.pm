
package Paws::ImageBuilder::PutImagePolicyResponse;
  use Moose;
  has ImageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::PutImagePolicyResponse

=head1 ATTRIBUTES


=head2 ImageArn => Str

The Amazon Resource Name (ARN) of the image that this policy was
applied to.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

