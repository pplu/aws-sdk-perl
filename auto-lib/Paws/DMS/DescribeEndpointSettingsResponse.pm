
package Paws::DMS::DescribeEndpointSettingsResponse;
  use Moose;
  has EndpointSettings => (is => 'ro', isa => 'ArrayRef[Paws::DMS::EndpointSetting]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEndpointSettingsResponse

=head1 ATTRIBUTES


=head2 EndpointSettings => ArrayRef[L<Paws::DMS::EndpointSetting>]

Descriptions of the endpoint settings available for your source or
target database engine.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

1;