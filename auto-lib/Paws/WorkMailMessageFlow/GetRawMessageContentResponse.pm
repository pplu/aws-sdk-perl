
package Paws::WorkMailMessageFlow::GetRawMessageContentResponse;
  use Moose;
  has MessageContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'messageContent', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'MessageContent');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMailMessageFlow::GetRawMessageContentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageContent => Str

The raw content of the email message, in MIME format.


=head2 _request_id => Str


=cut

