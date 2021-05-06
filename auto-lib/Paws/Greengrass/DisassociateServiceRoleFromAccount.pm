
package Paws::Greengrass::DisassociateServiceRoleFromAccount;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateServiceRoleFromAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/servicerole');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::DisassociateServiceRoleFromAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::DisassociateServiceRoleFromAccount - Arguments for method DisassociateServiceRoleFromAccount on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateServiceRoleFromAccount on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method DisassociateServiceRoleFromAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateServiceRoleFromAccount.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $DisassociateServiceRoleFromAccountResponse =
      $greengrass->DisassociateServiceRoleFromAccount();

    # Results:
    my $DisassociatedAt =
      $DisassociateServiceRoleFromAccountResponse->DisassociatedAt;

# Returns a L<Paws::Greengrass::DisassociateServiceRoleFromAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/DisassociateServiceRoleFromAccount>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateServiceRoleFromAccount in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

