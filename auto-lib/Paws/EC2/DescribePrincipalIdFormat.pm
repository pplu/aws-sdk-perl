
package Paws::EC2::DescribePrincipalIdFormat;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'Resource' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePrincipalIdFormat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribePrincipalIdFormatResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribePrincipalIdFormat - Arguments for method DescribePrincipalIdFormat on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePrincipalIdFormat on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribePrincipalIdFormat.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePrincipalIdFormat.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribePrincipalIdFormatResult = $ec2->DescribePrincipalIdFormat(
      DryRun     => 1,                      # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyString',             # OPTIONAL
      Resources  => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken  = $DescribePrincipalIdFormatResult->NextToken;
    my $Principals = $DescribePrincipalIdFormatResult->Principals;

    # Returns a L<Paws::EC2::DescribePrincipalIdFormatResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribePrincipalIdFormat>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned NextToken
value.



=head2 NextToken => Str

The token to request the next page of results.



=head2 Resources => ArrayRef[Str|Undef]

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

This class forms part of L<Paws>, documenting arguments for method DescribePrincipalIdFormat in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

