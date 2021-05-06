
package Paws::SQS::ListQueuesResult;
  use Moose;
  has QueueUrls => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'QueueUrl', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ListQueuesResult

=head1 ATTRIBUTES


=head2 QueueUrls => ArrayRef[Str|Undef]

A list of queue URLs, up to 1,000 entries.


=head2 _request_id => Str


=cut

