
package Paws::Snowball::CreateCluster;
  use Moose;
  has AddressId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has ForwardingAddressId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyARN => (is => 'ro', isa => 'Str');
  has Notification => (is => 'ro', isa => 'Paws::Snowball::Notification');
  has Resources => (is => 'ro', isa => 'Paws::Snowball::JobResource', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
  has ShippingOption => (is => 'ro', isa => 'Str', required => 1);
  has SnowballType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::CreateClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CreateCluster - Arguments for method CreateCluster on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the 
Amazon Import/Export Snowball service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

As an example:

  $service_obj->CreateCluster(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressId => Str

The ID for the address that you want the cluster shipped to.



=head2 Description => Str

An optional description of this specific cluster, for example
C<Environmental Data Cluster-01>.



=head2 ForwardingAddressId => Str

The forwarding address ID for a cluster. This field is not supported in
most regions.



=head2 B<REQUIRED> JobType => Str

The type of job for this cluster. Currently, the only job type
supported for clusters is C<LOCAL_USE>.

Valid values are: C<"IMPORT">, C<"EXPORT">, C<"LOCAL_USE">

=head2 KmsKeyARN => Str

The C<KmsKeyARN> value that you want to associate with this cluster.
C<KmsKeyARN> values are created by using the CreateKey
(http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html)
API action in AWS Key Management Service (AWS KMS).



=head2 Notification => L<Paws::Snowball::Notification>

The Amazon Simple Notification Service (Amazon SNS) notification
settings for this cluster.



=head2 B<REQUIRED> Resources => L<Paws::Snowball::JobResource>

The resources associated with the cluster job. These resources include
Amazon S3 buckets and optional AWS Lambda functions written in the
Python language.



=head2 B<REQUIRED> RoleARN => Str

The C<RoleARN> that you want to associate with this cluster. C<RoleArn>
values are created by using the CreateRole
(http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html)
API action in AWS Identity and Access Management (IAM).



=head2 B<REQUIRED> ShippingOption => Str

The shipping speed for each node in this cluster. This speed doesn't
dictate how soon you'll get each Snowball Edge appliance, rather it
represents how quickly each appliance moves to its destination while in
transit. Regional shipping speeds are as follows:

=over

=item *

In Australia, you have access to express shipping. Typically,
appliances shipped express are delivered in about a day.

=item *

In the European Union (EU), you have access to express shipping.
Typically, Snowball Edges shipped express are delivered in about a day.
In addition, most countries in the EU have access to standard shipping,
which typically takes less than a week, one way.

=item *

In India, Snowball Edges are delivered in one to seven days.

=item *

In the US, you have access to one-day shipping and two-day shipping.

=back


Valid values are: C<"SECOND_DAY">, C<"NEXT_DAY">, C<"EXPRESS">, C<"STANDARD">

=head2 SnowballType => Str

The type of AWS Snowball appliance to use for this cluster. Currently,
the only supported appliance type for cluster jobs is C<EDGE>.

Valid values are: C<"STANDARD">, C<"EDGE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

