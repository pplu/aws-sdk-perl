
package Paws::Pinpoint::GetApplicationDateRangeKpiResponse;
  use Moose;
  has ApplicationDateRangeKpiResponse => (is => 'ro', isa => 'Paws::Pinpoint::ApplicationDateRangeKpiResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ApplicationDateRangeKpiResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetApplicationDateRangeKpiResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationDateRangeKpiResponse => L<Paws::Pinpoint::ApplicationDateRangeKpiResponse>




=head2 _request_id => Str


=cut

