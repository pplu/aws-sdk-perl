
package Paws::MediaConvert::ListQueuesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Queues => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::Queue]', traits => ['NameInRequest'], request_name => 'queues');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListQueuesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Use this string to request the next batch of queues.


=head2 Queues => ArrayRef[L<Paws::MediaConvert::Queue>]

List of queues.


=head2 _request_id => Str


=cut

