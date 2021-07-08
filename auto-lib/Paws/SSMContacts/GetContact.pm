
package Paws::SSMContacts::GetContact;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::GetContactResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::GetContact - Arguments for method GetContact on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContact on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method GetContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContact.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $GetContactResult = $ssm -contacts->GetContact(
      ContactId => 'MySsmContactsArn',

    );

    # Results:
    my $Alias       = $GetContactResult->Alias;
    my $ContactArn  = $GetContactResult->ContactArn;
    my $DisplayName = $GetContactResult->DisplayName;
    my $Plan        = $GetContactResult->Plan;
    my $Type        = $GetContactResult->Type;

    # Returns a L<Paws::SSMContacts::GetContactResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/GetContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The Amazon Resource Name (ARN) of the contact or escalation plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContact in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

