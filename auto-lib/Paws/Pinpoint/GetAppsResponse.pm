
package Paws::Pinpoint::GetAppsResponse;
  use Moose;
  has ApplicationsResponse => (is => 'ro', isa => 'Paws::Pinpoint::ApplicationsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ApplicationsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetAppsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationsResponse => L<Paws::Pinpoint::ApplicationsResponse>




=head2 _request_id => Str


=cut

