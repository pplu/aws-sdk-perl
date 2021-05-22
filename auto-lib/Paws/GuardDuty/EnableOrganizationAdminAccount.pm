
package Paws::GuardDuty::EnableOrganizationAdminAccount;
  use Moose;
  has AdminAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminAccountId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableOrganizationAdminAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/admin/enable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::EnableOrganizationAdminAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::EnableOrganizationAdminAccount - Arguments for method EnableOrganizationAdminAccount on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableOrganizationAdminAccount on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method EnableOrganizationAdminAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableOrganizationAdminAccount.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $EnableOrganizationAdminAccountResponse =
      $guardduty->EnableOrganizationAdminAccount(
      AdminAccountId => 'MyString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/EnableOrganizationAdminAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminAccountId => Str

The AWS Account ID for the organization account to be enabled as a
GuardDuty delegated administrator.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableOrganizationAdminAccount in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

