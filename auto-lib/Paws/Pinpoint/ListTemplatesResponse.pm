
package Paws::Pinpoint::ListTemplatesResponse;
  use Moose;
  has TemplatesResponse => (is => 'ro', isa => 'Paws::Pinpoint::TemplatesResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'TemplatesResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ListTemplatesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplatesResponse => L<Paws::Pinpoint::TemplatesResponse>




=head2 _request_id => Str


=cut

