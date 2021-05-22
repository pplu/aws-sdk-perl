
package Paws::EC2::DescribeAddressesAttribute;
  use Moose;
  has AllocationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AllocationId' );
  has Attribute => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAddressesAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeAddressesAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAddressesAttribute - Arguments for method DescribeAddressesAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAddressesAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeAddressesAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAddressesAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeAddressesAttributeResult = $ec2->DescribeAddressesAttribute(
      AllocationIds => [ 'MyAllocationId', ... ],    # OPTIONAL
      Attribute     => 'domain-name',                # OPTIONAL
      DryRun        => 1,                            # OPTIONAL
      MaxResults    => 1,                            # OPTIONAL
      NextToken     => 'MyNextToken',                # OPTIONAL
    );

    # Results:
    my $Addresses = $DescribeAddressesAttributeResult->Addresses;
    my $NextToken = $DescribeAddressesAttributeResult->NextToken;

    # Returns a L<Paws::EC2::DescribeAddressesAttributeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeAddressesAttribute>

=head1 ATTRIBUTES


=head2 AllocationIds => ArrayRef[Str|Undef]

[EC2-VPC] The allocation IDs.



=head2 Attribute => Str

The attribute of the IP address.

Valid values are: C<"domain-name">

=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAddressesAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

