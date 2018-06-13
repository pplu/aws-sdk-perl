
package Paws::SES::DeleteIdentity;
  use Moose;
  has Identity => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::DeleteIdentityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIdentityResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DeleteIdentity - Arguments for method DeleteIdentity on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIdentity on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method DeleteIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIdentity.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # DeleteIdentity
    # The following example deletes an identity from the list of identities that
    # have been submitted for verification with Amazon SES:
    my $DeleteIdentityResponse = $email->DeleteIdentity(
      {
        'Identity' => 'user@example.com'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DeleteIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identity => Str

The identity to be removed from the list of identities for the AWS
Account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIdentity in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

