
package Paws::Pinpoint::CreateEmailTemplateResponse;
  use Moose;
  has CreateTemplateMessageBody => (is => 'ro', isa => 'Paws::Pinpoint::CreateTemplateMessageBody', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'CreateTemplateMessageBody');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateEmailTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTemplateMessageBody => L<Paws::Pinpoint::CreateTemplateMessageBody>




=head2 _request_id => Str


=cut

