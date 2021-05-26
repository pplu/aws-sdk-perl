
package Paws::ImageBuilder::PutComponentPolicyResponse;
  use Moose;
  has ComponentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentArn');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::PutComponentPolicyResponse

=head1 ATTRIBUTES


=head2 ComponentArn => Str

The Amazon Resource Name (ARN) of the component that this policy was
applied to.


=head2 RequestId => Str

The request ID that uniquely identifies this request.


=head2 _request_id => Str


=cut

