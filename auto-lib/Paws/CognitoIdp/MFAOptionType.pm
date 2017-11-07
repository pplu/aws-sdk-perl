package Paws::CognitoIdp::MFAOptionType;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str');
  has DeliveryMedium => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::MFAOptionType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::MFAOptionType object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., DeliveryMedium => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::MFAOptionType object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

Specifies the different settings for multi-factor authentication (MFA).

=head1 ATTRIBUTES


=head2 AttributeName => Str

  The attribute name of the MFA option type.


=head2 DeliveryMedium => Str

  The delivery medium (email message or SMS message) to send the MFA
code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

