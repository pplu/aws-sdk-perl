
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
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method UpdateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCluster.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
   # To update a cluster
   # This action allows you to update certain parameters for a cluster. Once the
   # cluster changes to a different state, usually within 60 minutes of it being
   # created, this action is no longer available.
    my $UpdateClusterResult = $snowball->UpdateCluster(
      {
        'AddressId' => 'ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b',
        'ClusterId' => 'CID123e4567-e89b-12d3-a456-426655440000',
        'Description' =>
          'Updated the address to send this to image processing - RJ'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/UpdateCluster>

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

