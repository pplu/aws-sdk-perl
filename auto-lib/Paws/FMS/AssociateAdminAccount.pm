
package Paws::FMS::AssociateAdminAccount;
  use Moose;
  has AdminAccount => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateAdminAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::AssociateAdminAccount - Arguments for method AssociateAdminAccount on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateAdminAccount on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method AssociateAdminAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateAdminAccount.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    $fms->AssociateAdminAccount(
      AdminAccount => 'MyAWSAccountId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/AssociateAdminAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminAccount => Str

The AWS account ID to associate with AWS Firewall Manager as the AWS
Firewall Manager administrator account. This can be an AWS
Organizations master account or a member account. For more information
about AWS Organizations and master accounts, see Managing the AWS
Accounts in Your Organization
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateAdminAccount in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

