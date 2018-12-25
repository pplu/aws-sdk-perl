
package Paws::EC2::DescribeNetworkInterfacePermissions;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NetworkInterfacePermissionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'NetworkInterfacePermissionId' );
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfacePermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeNetworkInterfacePermissionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInterfacePermissions - Arguments for method DescribeNetworkInterfacePermissions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNetworkInterfacePermissions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeNetworkInterfacePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNetworkInterfacePermissions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeNetworkInterfacePermissionsResult =
      $ec2->DescribeNetworkInterfacePermissions(
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],                       # OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      MaxResults                    => 1,    # OPTIONAL
      NetworkInterfacePermissionIds => [
        'MyString', ...                      # OPTIONAL
      ],                                     # OPTIONAL
      NextToken => 'MyString',               # OPTIONAL
      );

    # Results:
    my $NetworkInterfacePermissions =
      $DescribeNetworkInterfacePermissionsResult->NetworkInterfacePermissions;
    my $NextToken = $DescribeNetworkInterfacePermissionsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeNetworkInterfacePermissionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeNetworkInterfacePermissions>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<network-interface-permission.network-interface-permission-id> - The
ID of the permission.

=item *

C<network-interface-permission.network-interface-id> - The ID of the
network interface.

=item *

C<network-interface-permission.aws-account-id> - The AWS account ID.

=item *

C<network-interface-permission.aws-service> - The AWS service.

=item *

C<network-interface-permission.permission> - The type of permission
(C<INSTANCE-ATTACH> | C<EIP-ASSOCIATE>).

=back




=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value. If this parameter is not specified, up to 50 results are
returned by default.



=head2 NetworkInterfacePermissionIds => ArrayRef[Str|Undef]

One or more network interface permission IDs.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNetworkInterfacePermissions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

