
package Paws::SSMContacts::DeleteContact;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteContact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::DeleteContactResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::DeleteContact - Arguments for method DeleteContact on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteContact on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method DeleteContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteContact.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $DeleteContactResult = $ssm -contacts->DeleteContact(
      ContactId => 'MySsmContactsArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/DeleteContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The Amazon Resource Name (ARN) of the contact that you're deleting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteContact in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

