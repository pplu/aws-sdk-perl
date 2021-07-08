
package Paws::LocationService::GetDevicePositionHistory;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeviceId', required => 1);
  has EndTimeExclusive => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTimeInclusive => (is => 'ro', isa => 'Str');
  has TrackerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrackerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDevicePositionHistory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/list-positions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::GetDevicePositionHistoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetDevicePositionHistory - Arguments for method GetDevicePositionHistory on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDevicePositionHistory on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method GetDevicePositionHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDevicePositionHistory.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $GetDevicePositionHistoryResponse = $geo->GetDevicePositionHistory(
      DeviceId           => 'MyId',
      TrackerName        => 'MyResourceName',
      EndTimeExclusive   => '1970-01-01T01:00:00',    # OPTIONAL
      NextToken          => 'MyToken',                # OPTIONAL
      StartTimeInclusive => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $DevicePositions = $GetDevicePositionHistoryResponse->DevicePositions;
    my $NextToken       = $GetDevicePositionHistoryResponse->NextToken;

  # Returns a L<Paws::LocationService::GetDevicePositionHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/GetDevicePositionHistory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The device whose position history you want to retrieve.



=head2 EndTimeExclusive => Str

Specify the end time for the position history in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>. By default, the value will be the time
that the request is made.

Requirement:

=over

=item *

The time specified for C<EndTimeExclusive> must be after the time for
C<StartTimeInclusive>.

=back




=head2 NextToken => Str

The pagination token specifying which page of results to return in the
response. If no token is provided, the default page is the first page.

Default value: C<null>



=head2 StartTimeInclusive => Str

Specify the start time for the position history in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>. By default, the value will be 24 hours
prior to the time that the request is made.

Requirement:

=over

=item *

The time specified for C<StartTimeInclusive> must be before
C<EndTimeExclusive>.

=back




=head2 B<REQUIRED> TrackerName => Str

The tracker resource receiving the request for the device position
history.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDevicePositionHistory in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

