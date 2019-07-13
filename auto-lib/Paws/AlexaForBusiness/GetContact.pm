
package Paws::AlexaForBusiness::GetContact;
  use Moose;
  has ContactArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::GetContactResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetContact - Arguments for method GetContact on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContact on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method GetContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContact.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $GetContactResponse = $a4b->GetContact(
      ContactArn => 'MyArn',

    );

    # Results:
    my $Contact = $GetContactResponse->Contact;

    # Returns a L<Paws::AlexaForBusiness::GetContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/GetContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactArn => Str

The ARN of the contact for which to request details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContact in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

