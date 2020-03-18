
package Paws::Pinpoint::PhoneNumberValidateResponse;
  use Moose;
  has NumberValidateResponse => (is => 'ro', isa => 'Paws::Pinpoint::NumberValidateResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'NumberValidateResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::PhoneNumberValidateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NumberValidateResponse => L<Paws::Pinpoint::NumberValidateResponse>




=head2 _request_id => Str


=cut

