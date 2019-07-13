package Paws::ServiceCatalog::UpdateProvisioningPreferences;
  use Moose;
  has StackSetAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackSetFailureToleranceCount => (is => 'ro', isa => 'Int');
  has StackSetFailureTolerancePercentage => (is => 'ro', isa => 'Int');
  has StackSetMaxConcurrencyCount => (is => 'ro', isa => 'Int');
  has StackSetMaxConcurrencyPercentage => (is => 'ro', isa => 'Int');
  has StackSetOperationType => (is => 'ro', isa => 'Str');
  has StackSetRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisioningPreferences

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::UpdateProvisioningPreferences object:

  $service_obj->Method(Att1 => { StackSetAccounts => $value, ..., StackSetRegions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::UpdateProvisioningPreferences object:

  $result = $service_obj->Method(...);
  $result->Att1->StackSetAccounts

=head1 DESCRIPTION

The user-defined preferences that will be applied when updating a
provisioned product. Not all preferences are applicable to all
provisioned product types.

=head1 ATTRIBUTES


=head2 StackSetAccounts => ArrayRef[Str|Undef]

  One or more AWS accounts that will have access to the provisioned
product.

Applicable only to a C<CFN_STACKSET> provisioned product type.

The AWS accounts specified should be within the list of accounts in the
C<STACKSET> constraint. To get the list of accounts in the C<STACKSET>
constraint, use the C<DescribeProvisioningParameters> operation.

If no values are specified, the default value is all accounts from the
C<STACKSET> constraint.


=head2 StackSetFailureToleranceCount => Int

  The number of accounts, per region, for which this operation can fail
before AWS Service Catalog stops the operation in that region. If the
operation is stopped in a region, AWS Service Catalog doesn't attempt
the operation in any subsequent regions.

Applicable only to a C<CFN_STACKSET> provisioned product type.

Conditional: You must specify either C<StackSetFailureToleranceCount>
or C<StackSetFailureTolerancePercentage>, but not both.

The default value is C<0> if no value is specified.


=head2 StackSetFailureTolerancePercentage => Int

  The percentage of accounts, per region, for which this stack operation
can fail before AWS Service Catalog stops the operation in that region.
If the operation is stopped in a region, AWS Service Catalog doesn't
attempt the operation in any subsequent regions.

When calculating the number of accounts based on the specified
percentage, AWS Service Catalog rounds down to the next whole number.

Applicable only to a C<CFN_STACKSET> provisioned product type.

Conditional: You must specify either C<StackSetFailureToleranceCount>
or C<StackSetFailureTolerancePercentage>, but not both.


=head2 StackSetMaxConcurrencyCount => Int

  The maximum number of accounts in which to perform this operation at
one time. This is dependent on the value of
C<StackSetFailureToleranceCount>. C<StackSetMaxConcurrentCount> is at
most one more than the C<StackSetFailureToleranceCount>.

Note that this setting lets you specify the maximum for operations. For
large deployments, under certain circumstances the actual number of
accounts acted upon concurrently may be lower due to service
throttling.

Applicable only to a C<CFN_STACKSET> provisioned product type.

Conditional: You must specify either C<StackSetMaxConcurrentCount> or
C<StackSetMaxConcurrentPercentage>, but not both.


=head2 StackSetMaxConcurrencyPercentage => Int

  The maximum percentage of accounts in which to perform this operation
at one time.

When calculating the number of accounts based on the specified
percentage, AWS Service Catalog rounds down to the next whole number.
This is true except in cases where rounding down would result is zero.
In this case, AWS Service Catalog sets the number as C<1> instead.

Note that this setting lets you specify the maximum for operations. For
large deployments, under certain circumstances the actual number of
accounts acted upon concurrently may be lower due to service
throttling.

Applicable only to a C<CFN_STACKSET> provisioned product type.

Conditional: You must specify either C<StackSetMaxConcurrentCount> or
C<StackSetMaxConcurrentPercentage>, but not both.


=head2 StackSetOperationType => Str

  Determines what action AWS Service Catalog performs to a stack set or a
stack instance represented by the provisioned product. The default
value is C<UPDATE> if nothing is specified.

Applicable only to a C<CFN_STACKSET> provisioned product type.

=over

=item CREATE

Creates a new stack instance in the stack set represented by the
provisioned product. In this case, only new stack instances are created
based on accounts and regions; if new ProductId or
ProvisioningArtifactID are passed, they will be ignored.

=item UPDATE

Updates the stack set represented by the provisioned product and also
its stack instances.

=item DELETE

Deletes a stack instance in the stack set represented by the
provisioned product.

=back



=head2 StackSetRegions => ArrayRef[Str|Undef]

  One or more AWS Regions where the provisioned product will be
available.

Applicable only to a C<CFN_STACKSET> provisioned product type.

The specified regions should be within the list of regions from the
C<STACKSET> constraint. To get the list of regions in the C<STACKSET>
constraint, use the C<DescribeProvisioningParameters> operation.

If no values are specified, the default value is all regions from the
C<STACKSET> constraint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

