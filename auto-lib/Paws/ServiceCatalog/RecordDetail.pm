package Paws::ServiceCatalog::RecordDetail;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has PathId => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str');
  has ProvisionedProductId => (is => 'ro', isa => 'Str');
  has ProvisionedProductName => (is => 'ro', isa => 'Str');
  has ProvisionedProductType => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str');
  has RecordErrors => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::RecordError]');
  has RecordId => (is => 'ro', isa => 'Str');
  has RecordTags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::RecordTag]');
  has RecordType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::RecordDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::RecordDetail object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., UpdatedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::RecordDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

Information about a request operation.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The UTC time stamp of the creation time.


=head2 PathId => Str

  The path identifier.


=head2 ProductId => Str

  The product identifier.


=head2 ProvisionedProductId => Str

  The identifier of the provisioned product.


=head2 ProvisionedProductName => Str

  The user-friendly name of the provisioned product.


=head2 ProvisionedProductType => Str

  The type of provisioned product. The supported values are C<CFN_STACK>
and C<CFN_STACKSET>.


=head2 ProvisioningArtifactId => Str

  The identifier of the provisioning artifact.


=head2 RecordErrors => ArrayRef[L<Paws::ServiceCatalog::RecordError>]

  The errors that occurred.


=head2 RecordId => Str

  The identifier of the record.


=head2 RecordTags => ArrayRef[L<Paws::ServiceCatalog::RecordTag>]

  One or more tags.


=head2 RecordType => Str

  The record type.

=over

=item *

C<PROVISION_PRODUCT>

=item *

C<UPDATE_PROVISIONED_PRODUCT>

=item *

C<TERMINATE_PROVISIONED_PRODUCT>

=back



=head2 Status => Str

  The status of the provisioned product.

=over

=item *

C<CREATED> - The request was created but the operation has not started.

=item *

C<IN_PROGRESS> - The requested operation is in progress.

=item *

C<IN_PROGRESS_IN_ERROR> - The provisioned product is under change but
the requested operation failed and some remediation is occurring. For
example, a rollback.

=item *

C<SUCCEEDED> - The requested operation has successfully completed.

=item *

C<FAILED> - The requested operation has unsuccessfully completed.
Investigate using the error messages returned.

=back



=head2 UpdatedTime => Str

  The time when the record was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

