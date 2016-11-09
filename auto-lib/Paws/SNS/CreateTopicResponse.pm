
package Paws::SNS::CreateTopicResponse;
  use Moose;
  has TopicArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::CreateTopicResponse

=head1 ATTRIBUTES


=head2 TopicArn => Str

The Amazon Resource Name (ARN) assigned to the created topic.


=head2 _request_id => Str


=cut

