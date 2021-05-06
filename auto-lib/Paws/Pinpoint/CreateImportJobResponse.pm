
package Paws::Pinpoint::CreateImportJobResponse;
  use Moose;
  has ImportJobResponse => (is => 'ro', isa => 'Paws::Pinpoint::ImportJobResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ImportJobResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportJobResponse => L<Paws::Pinpoint::ImportJobResponse>




=head2 _request_id => Str


=cut

