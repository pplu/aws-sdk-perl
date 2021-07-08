
package Paws::RedShift::EndpointAuthorizationList;
  use Moose;
  has EndpointAuthorizationList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::EndpointAuthorization]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EndpointAuthorizationList

=head1 ATTRIBUTES


=head2 EndpointAuthorizationList => ArrayRef[L<Paws::RedShift::EndpointAuthorization>]

The authorizations to an endpoint.


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeEndpointAuthorization> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by the C<MaxRecords> parameter.


=head2 _request_id => Str


=cut

