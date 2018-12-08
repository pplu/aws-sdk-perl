
package Paws::AlexaForBusiness::CreateContact;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has FirstName => (is => 'ro', isa => 'Str', required => 1);
  has LastName => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::CreateContactResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateContact - Arguments for method CreateContact on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContact on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method CreateContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContact.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $CreateContactResponse = $a4b->CreateContact(
      FirstName          => 'MyContactName',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      DisplayName        => 'MyContactName',           # OPTIONAL
      LastName           => 'MyContactName',           # OPTIONAL
      PhoneNumber        => 'MyE164PhoneNumber',       # OPTIONAL
    );

    # Results:
    my $ContactArn = $CreateContactResponse->ContactArn;

    # Returns a L<Paws::AlexaForBusiness::CreateContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/CreateContact>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, user-specified identifier for this request that ensures
idempotency.



=head2 DisplayName => Str

The name of the contact to display on the console.



=head2 B<REQUIRED> FirstName => Str

The first name of the contact that is used to call the contact on the
device.



=head2 LastName => Str

The last name of the contact that is used to call the contact on the
device.



=head2 PhoneNumber => Str

The phone number of the contact in E.164 format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContact in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

