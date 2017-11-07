
package Paws::Snowball::UpdateCluster;
  use Moose;
  has AddressId => (is => 'ro', isa => 'Str');
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has ForwardingAddressId => (is => 'ro', isa => 'Str');
  has Notification => (is => 'ro', isa => 'Paws::Snowball::Notification');
  has Resources => (is => 'ro', isa => 'Paws::Snowball::JobResource');
  has RoleARN => (is => 'ro', isa => 'Str');
  has ShippingOption => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::UpdateClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::UpdateCluster - Arguments for method UpdateCluster on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCluster on the 
Amazon Import/Export Snowball service. Use the attributes of this class
as arguments to method UpdateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCluster.

As an example:

  $service_obj->UpdateCluster(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AddressId => Str

The ID of the updated Address object.



=head2 B<REQUIRED> ClusterId => Str

The cluster ID of the cluster that you want to update, for example
C<CID123e4567-e89b-12d3-a456-426655440000>.



=head2 Description => Str

The updated description of this cluster.



=head2 ForwardingAddressId => Str

The updated ID for the forwarding address for a cluster. This field is
not supported in most regions.



=head2 Notification => L<Paws::Snowball::Notification>

The new or updated Notification object.



=head2 Resources => L<Paws::Snowball::JobResource>

The updated arrays of JobResource objects that can include updated
S3Resource objects or LambdaResource objects.



=head2 RoleARN => Str

The new role Amazon Resource Name (ARN) that you want to associate with
this cluster. To create a role ARN, use the CreateRole
(http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html)
API action in AWS Identity and Access Management (IAM).



=head2 ShippingOption => Str

The updated shipping option value of this cluster's ShippingDetails
object.

Valid values are: C<"SECOND_DAY">, C<"NEXT_DAY">, C<"EXPRESS">, C<"STANDARD">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCluster in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

