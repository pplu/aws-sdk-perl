
package Paws::IAM::UpdateServiceSpecificCredential;
  use Moose;
  has ServiceSpecificCredentialId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceSpecificCredential');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateServiceSpecificCredential - Arguments for method UpdateServiceSpecificCredential on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceSpecificCredential on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UpdateServiceSpecificCredential.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceSpecificCredential.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->UpdateServiceSpecificCredential(
      ServiceSpecificCredentialId => 'MyserviceSpecificCredentialId',
      Status                      => 'Active',
      UserName                    => 'MyuserNameType',                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UpdateServiceSpecificCredential>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceSpecificCredentialId => Str

The unique identifier of the service-specific credential.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that can
consist of any upper or lowercased letter or digit.



=head2 B<REQUIRED> Status => Str

The status to be assigned to the service-specific credential.

Valid values are: C<"Active">, C<"Inactive">

=head2 UserName => Str

The name of the IAM user associated with the service-specific
credential. If you do not specify this value, then the operation
assumes the user whose credentials are used to call the operation.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceSpecificCredential in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

