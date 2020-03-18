
package Paws::Pinpoint::GetVoiceTemplateResponse;
  use Moose;
  has VoiceTemplateResponse => (is => 'ro', isa => 'Paws::Pinpoint::VoiceTemplateResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VoiceTemplateResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetVoiceTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VoiceTemplateResponse => L<Paws::Pinpoint::VoiceTemplateResponse>




=head2 _request_id => Str


=cut

