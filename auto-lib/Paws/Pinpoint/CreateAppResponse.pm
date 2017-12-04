
package Paws::Pinpoint::CreateAppResponse;
  use Moose;
  has ApplicationResponse => (is => 'ro', isa => 'Paws::Pinpoint::ApplicationResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ApplicationResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateAppResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationResponse => L<Paws::Pinpoint::ApplicationResponse>




=head2 _request_id => Str


=cut

