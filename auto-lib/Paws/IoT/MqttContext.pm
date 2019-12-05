package Paws::IoT::MqttContext;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str', request_name => 'clientId', traits => ['NameInRequest']);
  has Password => (is => 'ro', isa => 'Str', request_name => 'password', traits => ['NameInRequest']);
  has Username => (is => 'ro', isa => 'Str', request_name => 'username', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::MqttContext

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::MqttContext object:

  $service_obj->Method(Att1 => { ClientId => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::MqttContext object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientId

=head1 DESCRIPTION

Specifies the MQTT context to use for the test authorizer request

=head1 ATTRIBUTES


=head2 ClientId => Str

  The value of the C<clientId> key in an MQTT authorization request.


=head2 Password => Str

  The value of the C<password> key in an MQTT authorization request.


=head2 Username => Str

  The value of the C<username> key in an MQTT authorization request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

