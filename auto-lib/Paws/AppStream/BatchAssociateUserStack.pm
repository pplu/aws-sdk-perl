
package Paws::AppStream::BatchAssociateUserStack;
  use Moose;
  has UserStackAssociations => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::UserStackAssociation]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchAssociateUserStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::BatchAssociateUserStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::BatchAssociateUserStack - Arguments for method BatchAssociateUserStack on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchAssociateUserStack on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method BatchAssociateUserStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchAssociateUserStack.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $BatchAssociateUserStackResult = $appstream2->BatchAssociateUserStack(
      UserStackAssociations => [
        {
          AuthenticationType    => 'API',          # values: API, SAML, USERPOOL
          StackName             => 'MyString',     # min: 1
          UserName              => 'MyUsername',   # min: 1, max: 128
          SendEmailNotification => 1,              # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Errors = $BatchAssociateUserStackResult->Errors;

    # Returns a L<Paws::AppStream::BatchAssociateUserStackResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/BatchAssociateUserStack>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserStackAssociations => ArrayRef[L<Paws::AppStream::UserStackAssociation>]

The list of UserStackAssociation objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchAssociateUserStack in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

