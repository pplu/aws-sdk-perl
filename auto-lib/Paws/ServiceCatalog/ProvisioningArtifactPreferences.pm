package Paws::ServiceCatalog::ProvisioningArtifactPreferences;
  use Moose;
  has StackSetAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackSetRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisioningArtifactPreferences

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisioningArtifactPreferences object:

  $service_obj->Method(Att1 => { StackSetAccounts => $value, ..., StackSetRegions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisioningArtifactPreferences object:

  $result = $service_obj->Method(...);
  $result->Att1->StackSetAccounts

=head1 DESCRIPTION

The user-defined preferences that will be applied during product
provisioning, unless overridden by C<ProvisioningPreferences> or
C<UpdateProvisioningPreferences>.

For more information on maximum concurrent accounts and failure
tolerance, see Stack set operation options
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options)
in the I<AWS CloudFormation User Guide>.

=head1 ATTRIBUTES


=head2 StackSetAccounts => ArrayRef[Str|Undef]

  One or more AWS accounts where stack instances are deployed from the
stack set. These accounts can be scoped in
C<ProvisioningPreferences$StackSetAccounts> and
C<UpdateProvisioningPreferences$StackSetAccounts>.

Applicable only to a C<CFN_STACKSET> provisioned product type.


=head2 StackSetRegions => ArrayRef[Str|Undef]

  One or more AWS Regions where stack instances are deployed from the
stack set. These regions can be scoped in
C<ProvisioningPreferences$StackSetRegions> and
C<UpdateProvisioningPreferences$StackSetRegions>.

Applicable only to a C<CFN_STACKSET> provisioned product type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

