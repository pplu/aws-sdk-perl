package Paws::DeviceFarm::DeviceMinutes;
  use Moose;
  has Metered => (is => 'ro', isa => 'Num', request_name => 'metered', traits => ['NameInRequest']);
  has Total => (is => 'ro', isa => 'Num', request_name => 'total', traits => ['NameInRequest']);
  has Unmetered => (is => 'ro', isa => 'Num', request_name => 'unmetered', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::DeviceMinutes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::DeviceMinutes object:

  $service_obj->Method(Att1 => { Metered => $value, ..., Unmetered => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::DeviceMinutes object:

  $result = $service_obj->Method(...);
  $result->Att1->Metered

=head1 DESCRIPTION

Represents the total (metered or unmetered) minutes used by the
resource to run tests. Contains the sum of minutes consumed by all
children.

=head1 ATTRIBUTES


=head2 Metered => Num

  When specified, represents only the sum of metered minutes used by the
resource to run tests.


=head2 Total => Num

  When specified, represents the total minutes used by the resource to
run tests.


=head2 Unmetered => Num

  When specified, represents only the sum of unmetered minutes used by
the resource to run tests.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

