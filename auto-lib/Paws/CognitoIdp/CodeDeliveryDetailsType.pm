package Paws::CognitoIdp::CodeDeliveryDetailsType;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str');
  has DeliveryMedium => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CodeDeliveryDetailsType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::CodeDeliveryDetailsType object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., Destination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::CodeDeliveryDetailsType object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

The code delivery details being returned from the server.

=head1 ATTRIBUTES


=head2 AttributeName => Str

  The attribute name.


=head2 DeliveryMedium => Str

  The delivery medium (email message or phone number).


=head2 Destination => Str

  The destination for the code delivery details.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

