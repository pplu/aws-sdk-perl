package Paws::ServiceCatalog::ProvisionedProductDetail;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has LastRecordId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisionedProductDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisionedProductDetail object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisionedProductDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a provisioned product.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the provisioned product.


=head2 CreatedTime => Str

  The UTC time stamp of the creation time.


=head2 Id => Str

  The identifier of the provisioned product.


=head2 IdempotencyToken => Str

  A unique identifier that you provide to ensure idempotency. If multiple
requests differ only by the idempotency token, the same response is
returned for each repeated request.


=head2 LastRecordId => Str

  The record identifier of the last request performed on this provisioned
product.


=head2 Name => Str

  The user-friendly name of the provisioned product.


=head2 ProductId => Str

  The product identifier. For example, C<prod-abcdzk7xy33qa>.


=head2 ProvisioningArtifactId => Str

  The identifier of the provisioning artifact. For example,
C<pa-4abcdjnxjj6ne>.


=head2 Status => Str

  The current status of the provisioned product.

=over

=item *

C<AVAILABLE> - Stable state, ready to perform any operation. The most
recent operation succeeded and completed.

=item *

C<UNDER_CHANGE> - Transitive state. Operations performed might not have
valid results. Wait for an C<AVAILABLE> status before performing
operations.

=item *

C<TAINTED> - Stable state, ready to perform any operation. The stack
has completed the requested operation but is not exactly what was
requested. For example, a request to update to a new version failed and
the stack rolled back to the current version.

=item *

C<ERROR> - An unexpected error occurred. The provisioned product exists
but the stack is not running. For example, CloudFormation received a
parameter value that was not valid and could not launch the stack.

=item *

C<PLAN_IN_PROGRESS> - Transitive state. The plan operations were
performed to provision a new product, but resources have not yet been
created. After reviewing the list of resources to be created, execute
the plan. Wait for an C<AVAILABLE> status before performing operations.

=back



=head2 StatusMessage => Str

  The current status message of the provisioned product.


=head2 Type => Str

  The type of provisioned product. The supported values are C<CFN_STACK>
and C<CFN_STACKSET>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

