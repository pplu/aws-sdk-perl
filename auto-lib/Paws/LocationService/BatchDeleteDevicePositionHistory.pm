
package Paws::LocationService::BatchDeleteDevicePositionHistory;
  use Moose;
  has DeviceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TrackerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrackerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteDevicePositionHistory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tracking/v0/trackers/{TrackerName}/delete-positions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::BatchDeleteDevicePositionHistoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchDeleteDevicePositionHistory - Arguments for method BatchDeleteDevicePositionHistory on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteDevicePositionHistory on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method BatchDeleteDevicePositionHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteDevicePositionHistory.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $BatchDeleteDevicePositionHistoryResponse =
      $geo->BatchDeleteDevicePositionHistory(
      DeviceIds => [
        'MyId', ...    # min: 1, max: 100
      ],
      TrackerName => 'MyResourceName',

      );

    # Results:
    my $Errors = $BatchDeleteDevicePositionHistoryResponse->Errors;

# Returns a L<Paws::LocationService::BatchDeleteDevicePositionHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/BatchDeleteDevicePositionHistory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceIds => ArrayRef[Str|Undef]

Devices whose position history you want to delete.

=over

=item *

For example, for two devices: C<E<ldquo>DeviceIdsE<rdquo> :
[DeviceId1,DeviceId2]>

=back




=head2 B<REQUIRED> TrackerName => Str

The name of the tracker resource to delete the device position history
from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteDevicePositionHistory in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

