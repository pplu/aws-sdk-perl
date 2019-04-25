
package Paws::IoT::UpdateStreamResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has StreamArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'streamArn');
  has StreamId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'streamId');
  has StreamVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'streamVersion');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateStreamResponse

=head1 ATTRIBUTES


=head2 Description => Str

A description of the stream.


=head2 StreamArn => Str

The stream ARN.


=head2 StreamId => Str

The stream ID.


=head2 StreamVersion => Int

The stream version.


=head2 _request_id => Str


=cut

