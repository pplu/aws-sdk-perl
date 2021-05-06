
package Paws::EC2::DescribeIdFormat;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIdFormat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeIdFormatResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeIdFormat - Arguments for method DescribeIdFormat on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIdFormat on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeIdFormat.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIdFormat.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeIdFormatResult = $ec2->DescribeIdFormat(
      Resource => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Statuses = $DescribeIdFormatResult->Statuses;

    # Returns a L<Paws::EC2::DescribeIdFormatResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeIdFormat>

=head1 ATTRIBUTES


=head2 Resource => Str

The type of resource: C<bundle> | C<conversion-task> |
C<customer-gateway> | C<dhcp-options> | C<elastic-ip-allocation> |
C<elastic-ip-association> | C<export-task> | C<flow-log> | C<image> |
C<import-task> | C<instance> | C<internet-gateway> | C<network-acl> |
C<network-acl-association> | C<network-interface> |
C<network-interface-attachment> | C<prefix-list> | C<reservation> |
C<route-table> | C<route-table-association> | C<security-group> |
C<snapshot> | C<subnet> | C<subnet-cidr-block-association> | C<volume>
| C<vpc> | C<vpc-cidr-block-association> | C<vpc-endpoint> |
C<vpc-peering-connection> | C<vpn-connection> | C<vpn-gateway>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIdFormat in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

