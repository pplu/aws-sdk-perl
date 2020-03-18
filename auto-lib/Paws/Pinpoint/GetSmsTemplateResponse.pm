
package Paws::Pinpoint::GetSmsTemplateResponse;
  use Moose;
  has SMSTemplateResponse => (is => 'ro', isa => 'Paws::Pinpoint::SMSTemplateResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SMSTemplateResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSmsTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SMSTemplateResponse => L<Paws::Pinpoint::SMSTemplateResponse>




=head2 _request_id => Str


=cut

