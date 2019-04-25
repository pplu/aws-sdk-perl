
package Paws::EC2::ModifyIdentityIdFormat;
  use Moose;
  has PrincipalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalArn' , required => 1);
  has Resource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resource' , required => 1);
  has UseLongIds => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useLongIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyIdentityIdFormat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyIdentityIdFormat - Arguments for method ModifyIdentityIdFormat on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyIdentityIdFormat on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyIdentityIdFormat.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyIdentityIdFormat.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    $ec2->ModifyIdentityIdFormat(
      PrincipalArn => 'MyString',
      Resource     => 'MyString',
      UseLongIds   => 1,

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyIdentityIdFormat>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PrincipalArn => Str

The ARN of the principal, which can be an IAM user, IAM role, or the
root user. Specify C<all> to modify the ID format for all IAM users,
IAM roles, and the root user of the account.



=head2 B<REQUIRED> Resource => Str

The type of resource: C<bundle> | C<conversion-task> |
C<customer-gateway> | C<dhcp-options> | C<elastic-ip-allocation> |
C<elastic-ip-association> | C<export-task> | C<flow-log> | C<image> |
C<import-task> | C<internet-gateway> | C<network-acl> |
C<network-acl-association> | C<network-interface> |
C<network-interface-attachment> | C<prefix-list> | C<route-table> |
C<route-table-association> | C<security-group> | C<subnet> |
C<subnet-cidr-block-association> | C<vpc> |
C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>.

Alternatively, use the C<all-current> option to include all resource
types that are currently within their opt-in period for longer IDs.



=head2 B<REQUIRED> UseLongIds => Bool

Indicates whether the resource should use longer IDs (17-character IDs)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyIdentityIdFormat in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

