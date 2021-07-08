
package Paws::SecurityHub::UpdateOrganizationConfiguration;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOrganizationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::UpdateOrganizationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::UpdateOrganizationConfiguration - Arguments for method UpdateOrganizationConfiguration on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOrganizationConfiguration on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method UpdateOrganizationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOrganizationConfiguration.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $UpdateOrganizationConfigurationResponse =
      $securityhub->UpdateOrganizationConfiguration(
      AutoEnable => 1,

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/UpdateOrganizationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoEnable => Bool

Whether to automatically enable Security Hub for new accounts in the
organization.

By default, this is C<false>, and new accounts are not added
automatically.

To automatically enable Security Hub for new accounts, set this to
C<true>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOrganizationConfiguration in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

