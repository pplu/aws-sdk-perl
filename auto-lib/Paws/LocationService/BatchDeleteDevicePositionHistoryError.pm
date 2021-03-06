# Generated by default/object.tt
package Paws::LocationService::BatchDeleteDevicePositionHistoryError;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', required => 1);
  has Error => (is => 'ro', isa => 'Paws::LocationService::BatchItemError', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchDeleteDevicePositionHistoryError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::BatchDeleteDevicePositionHistoryError object:

  $service_obj->Method(Att1 => { DeviceId => $value, ..., Error => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::BatchDeleteDevicePositionHistoryError object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceId

=head1 DESCRIPTION

Contains the tracker resource details.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The ID of the device for this position.


=head2 B<REQUIRED> Error => L<Paws::LocationService::BatchItemError>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

