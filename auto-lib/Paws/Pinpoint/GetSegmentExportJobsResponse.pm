
package Paws::Pinpoint::GetSegmentExportJobsResponse;
  use Moose;
  has ExportJobsResponse => (is => 'ro', isa => 'Paws::Pinpoint::ExportJobsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ExportJobsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSegmentExportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportJobsResponse => L<Paws::Pinpoint::ExportJobsResponse>




=head2 _request_id => Str


=cut

