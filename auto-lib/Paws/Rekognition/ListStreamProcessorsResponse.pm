
package Paws::Rekognition::ListStreamProcessorsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StreamProcessors => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::StreamProcessor]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListStreamProcessorsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of stream processors.


=head2 StreamProcessors => ArrayRef[L<Paws::Rekognition::StreamProcessor>]

List of stream processors that you have created.


=head2 _request_id => Str


=cut

1;