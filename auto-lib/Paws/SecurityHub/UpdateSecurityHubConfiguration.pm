
package Paws::SecurityHub::UpdateSecurityHubConfiguration;
  use Moose;
  has AutoEnableControls => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSecurityHubConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::UpdateSecurityHubConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::UpdateSecurityHubConfiguration - Arguments for method UpdateSecurityHubConfiguration on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSecurityHubConfiguration on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method UpdateSecurityHubConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSecurityHubConfiguration.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $UpdateSecurityHubConfigurationResponse =
      $securityhub->UpdateSecurityHubConfiguration(
      AutoEnableControls => 1,    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/UpdateSecurityHubConfiguration>

=head1 ATTRIBUTES


=head2 AutoEnableControls => Bool

Whether to automatically enable new controls when they are added to
standards that are enabled.

By default, this is set to C<true>, and new controls are enabled
automatically. To not automatically enable new controls, set this to
C<false>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecurityHubConfiguration in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

