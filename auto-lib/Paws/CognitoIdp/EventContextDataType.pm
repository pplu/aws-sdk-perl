package Paws::CognitoIdp::EventContextDataType;
  use Moose;
  has City => (is => 'ro', isa => 'Str');
  has Country => (is => 'ro', isa => 'Str');
  has DeviceName => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::EventContextDataType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::EventContextDataType object:

  $service_obj->Method(Att1 => { City => $value, ..., Timezone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::EventContextDataType object:

  $result = $service_obj->Method(...);
  $result->Att1->City

=head1 DESCRIPTION

Specifies the user context data captured at the time of an event
request.

=head1 ATTRIBUTES


=head2 City => Str

  The user's city.


=head2 Country => Str

  The user's country.


=head2 DeviceName => Str

  The user's device name.


=head2 IpAddress => Str

  The user's IP address.


=head2 Timezone => Str

  The user's time zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

