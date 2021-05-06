
package Paws::Pinpoint::GetSegmentImportJobsResponse;
  use Moose;
  has ImportJobsResponse => (is => 'ro', isa => 'Paws::Pinpoint::ImportJobsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ImportJobsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSegmentImportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportJobsResponse => L<Paws::Pinpoint::ImportJobsResponse>




=head2 _request_id => Str


=cut

