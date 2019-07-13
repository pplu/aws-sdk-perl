
package Paws::WorkLink::DescribeDeviceResponse;
  use Moose;
  has FirstAccessedTime => (is => 'ro', isa => 'Str');
  has LastAccessedTime => (is => 'ro', isa => 'Str');
  has Manufacturer => (is => 'ro', isa => 'Str');
  has Model => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has OperatingSystemVersion => (is => 'ro', isa => 'Str');
  has PatchLevel => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeDeviceResponse

=head1 ATTRIBUTES


=head2 FirstAccessedTime => Str

The date that the device first signed in to Amazon WorkLink.


=head2 LastAccessedTime => Str

The date that the device last accessed Amazon WorkLink.


=head2 Manufacturer => Str

The manufacturer of the device.


=head2 Model => Str

The model of the device.


=head2 OperatingSystem => Str

The operating system of the device.


=head2 OperatingSystemVersion => Str

The operating system version of the device.


=head2 PatchLevel => Str

The operating system patch level of the device.


=head2 Status => Str

The current state of the device.

Valid values are: C<"ACTIVE">, C<"SIGNED_OUT">
=head2 Username => Str

The user name associated with the device.


=head2 _request_id => Str


=cut

