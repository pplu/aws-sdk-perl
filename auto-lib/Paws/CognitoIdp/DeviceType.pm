package Paws::CognitoIdp::DeviceType;
  use Moose;
  has DeviceAttributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]');
  has DeviceCreateDate => (is => 'ro', isa => 'Str');
  has DeviceKey => (is => 'ro', isa => 'Str');
  has DeviceLastAuthenticatedDate => (is => 'ro', isa => 'Str');
  has DeviceLastModifiedDate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DeviceType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::DeviceType object:

  $service_obj->Method(Att1 => { DeviceAttributes => $value, ..., DeviceLastModifiedDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::DeviceType object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceAttributes

=head1 DESCRIPTION

The device type.

=head1 ATTRIBUTES


=head2 DeviceAttributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

  The device attributes.


=head2 DeviceCreateDate => Str

  The creation date of the device.


=head2 DeviceKey => Str

  The device key.


=head2 DeviceLastAuthenticatedDate => Str

  The date in which the device was last authenticated.


=head2 DeviceLastModifiedDate => Str

  The last modified date of the device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

