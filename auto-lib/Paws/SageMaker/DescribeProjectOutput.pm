
package Paws::SageMaker::DescribeProjectOutput;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has ProjectArn => (is => 'ro', isa => 'Str', required => 1);
  has ProjectDescription => (is => 'ro', isa => 'Str');
  has ProjectId => (is => 'ro', isa => 'Str', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', required => 1);
  has ProjectStatus => (is => 'ro', isa => 'Str', required => 1);
  has ServiceCatalogProvisionedProductDetails => (is => 'ro', isa => 'Paws::SageMaker::ServiceCatalogProvisionedProductDetails');
  has ServiceCatalogProvisioningDetails => (is => 'ro', isa => 'Paws::SageMaker::ServiceCatalogProvisioningDetails', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeProjectOutput

=head1 ATTRIBUTES


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 B<REQUIRED> CreationTime => Str

The time when the project was created.


=head2 B<REQUIRED> ProjectArn => Str

The Amazon Resource Name (ARN) of the project.


=head2 ProjectDescription => Str

The description of the project.


=head2 B<REQUIRED> ProjectId => Str

The ID of the project.


=head2 B<REQUIRED> ProjectName => Str

The name of the project.


=head2 B<REQUIRED> ProjectStatus => Str

The status of the project.

Valid values are: C<"Pending">, C<"CreateInProgress">, C<"CreateCompleted">, C<"CreateFailed">, C<"DeleteInProgress">, C<"DeleteFailed">, C<"DeleteCompleted">
=head2 ServiceCatalogProvisionedProductDetails => L<Paws::SageMaker::ServiceCatalogProvisionedProductDetails>

Information about a provisioned service catalog product.


=head2 B<REQUIRED> ServiceCatalogProvisioningDetails => L<Paws::SageMaker::ServiceCatalogProvisioningDetails>

Information used to provision a service catalog product. For
information, see What is Amazon Web Services Service Catalog
(https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html).


=head2 _request_id => Str


=cut

1;