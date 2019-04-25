
package Paws::Greengrass::AssociateServiceRoleToAccount;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateServiceRoleToAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/servicerole');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::AssociateServiceRoleToAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::AssociateServiceRoleToAccount - Arguments for method AssociateServiceRoleToAccount on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateServiceRoleToAccount on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method AssociateServiceRoleToAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateServiceRoleToAccount.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $AssociateServiceRoleToAccountResponse =
      $greengrass->AssociateServiceRoleToAccount(
      RoleArn => 'My__string',    # OPTIONAL
      );

    # Results:
    my $AssociatedAt = $AssociateServiceRoleToAccountResponse->AssociatedAt;

  # Returns a L<Paws::Greengrass::AssociateServiceRoleToAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/AssociateServiceRoleToAccount>

=head1 ATTRIBUTES


=head2 RoleArn => Str

The ARN of the service role you wish to associate with your account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateServiceRoleToAccount in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

