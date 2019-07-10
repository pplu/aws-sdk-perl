
package Paws::Pinpoint::CreateExportJobResponse;
  use Moose;
  has ExportJobResponse => (is => 'ro', isa => 'Paws::Pinpoint::ExportJobResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ExportJobResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateExportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportJobResponse => L<Paws::Pinpoint::ExportJobResponse>




=head2 _request_id => Str


=cut

