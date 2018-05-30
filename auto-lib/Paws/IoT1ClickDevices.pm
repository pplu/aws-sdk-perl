package Paws::IoT1ClickDevices;
  use Moose;
  sub service { 'devices.iot1click' }
  sub signing_name { 'iot1click' }
  sub version { '2018-05-14' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ClaimDevicesByClaimCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickDevices::ClaimDevicesByClaimCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickDevices::DescribeDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub FinalizeDeviceClaim {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickDevices::FinalizeDeviceClaim', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeviceMethods {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickDevices::GetDeviceMethods', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InitiateDeviceClaim {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickDevices::InitiateDeviceClaim', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeDeviceMethod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickDevices::InvokeDeviceMethod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeviceEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickDevices::ListDeviceEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickDevices::ListDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnclaimDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickDevices::UnclaimDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeviceState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoT1ClickDevices::UpdateDeviceState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/ClaimDevicesByClaimCode DescribeDevice FinalizeDeviceClaim GetDeviceMethods InitiateDeviceClaim InvokeDeviceMethod ListDeviceEvents ListDevices UnclaimDevice UpdateDeviceState / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices - Perl Interface to AWS AWS IoT 1-Click Devices Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoT1ClickDevices');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Stub description

=head1 METHODS

=head2 ClaimDevicesByClaimCode

=over

=item ClaimCode => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickDevices::ClaimDevicesByClaimCode>

Returns: a L<Paws::IoT1ClickDevices::ClaimDevicesByClaimCodeResponse> instance

Adds device(s) to your account (i.e., claim one or more devices) if and
only if you received a claim code with the device(s).


=head2 DescribeDevice

=over

=item DeviceId => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickDevices::DescribeDevice>

Returns: a L<Paws::IoT1ClickDevices::DescribeDeviceResponse> instance

Given a device ID, returns a DescribeDeviceResponse object describing
the details of the device.


=head2 FinalizeDeviceClaim

=over

=item DeviceId => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickDevices::FinalizeDeviceClaim>

Returns: a L<Paws::IoT1ClickDevices::FinalizeDeviceClaimResponse> instance

Given a device ID, finalizes the claim request for the associated
device.

Claiming a device consists of initiating a claim, then publishing a
device event, and finalizing the claim. For a device of type button, a
device event can be published by simply clicking the device.


=head2 GetDeviceMethods

=over

=item DeviceId => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickDevices::GetDeviceMethods>

Returns: a L<Paws::IoT1ClickDevices::GetDeviceMethodsResponse> instance

Given a device ID, returns the invokable methods associated with the
device.


=head2 InitiateDeviceClaim

=over

=item DeviceId => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickDevices::InitiateDeviceClaim>

Returns: a L<Paws::IoT1ClickDevices::InitiateDeviceClaimResponse> instance

Given a device ID, initiates a claim request for the associated device.

Claiming a device consists of initiating a claim, then publishing a
device event, and finalizing the claim. For a device of type button, a
device event can be published by simply clicking the device.


=head2 InvokeDeviceMethod

=over

=item DeviceId => Str

=item [DeviceMethod => L<Paws::IoT1ClickDevices::DeviceMethod>]

=item [DeviceMethodParameters => Str]


=back

Each argument is described in detail in: L<Paws::IoT1ClickDevices::InvokeDeviceMethod>

Returns: a L<Paws::IoT1ClickDevices::InvokeDeviceMethodResponse> instance

Given a device ID, issues a request to invoke a named device method
(with possible parameters). See the "Example POST" code snippet below.


=head2 ListDeviceEvents

=over

=item DeviceId => Str

=item FromTimeStamp => Str

=item ToTimeStamp => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT1ClickDevices::ListDeviceEvents>

Returns: a L<Paws::IoT1ClickDevices::ListDeviceEventsResponse> instance

Using a device ID, returns a DeviceEventsResponse object containing an
array of events for the device.


=head2 ListDevices

=over

=item [DeviceType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoT1ClickDevices::ListDevices>

Returns: a L<Paws::IoT1ClickDevices::ListDevicesResponse> instance

Lists the 1-Click compatible devices associated with your AWS account.


=head2 UnclaimDevice

=over

=item DeviceId => Str


=back

Each argument is described in detail in: L<Paws::IoT1ClickDevices::UnclaimDevice>

Returns: a L<Paws::IoT1ClickDevices::UnclaimDeviceResponse> instance

Disassociates a device from your AWS account using its device ID.


=head2 UpdateDeviceState

=over

=item DeviceId => Str

=item [Enabled => Bool]


=back

Each argument is described in detail in: L<Paws::IoT1ClickDevices::UpdateDeviceState>

Returns: a L<Paws::IoT1ClickDevices::UpdateDeviceStateResponse> instance

Using a Boolean value (true or false), this operation enables or
disables the device given a device ID.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

