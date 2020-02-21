
package Paws::EC2::GetAssociatedIpv6PoolCidrs;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssociatedIpv6PoolCidrs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetAssociatedIpv6PoolCidrsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetAssociatedIpv6PoolCidrs - Arguments for method GetAssociatedIpv6PoolCidrs on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssociatedIpv6PoolCidrs on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetAssociatedIpv6PoolCidrs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssociatedIpv6PoolCidrs.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetAssociatedIpv6PoolCidrsResult = $ec2->GetAssociatedIpv6PoolCidrs(
      PoolId     => 'MyIpv6PoolEc2Id',
      DryRun     => 1,                   # OPTIONAL
      MaxResults => 1,                   # OPTIONAL
      NextToken  => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $Ipv6CidrAssociations =
      $GetAssociatedIpv6PoolCidrsResult->Ipv6CidrAssociations;
    my $NextToken = $GetAssociatedIpv6PoolCidrsResult->NextToken;

    # Returns a L<Paws::EC2::GetAssociatedIpv6PoolCidrsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetAssociatedIpv6PoolCidrs>

=head1 ATTRIBUTES


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



=head2 B<REQUIRED> PoolId => Str

The ID of the IPv6 address pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssociatedIpv6PoolCidrs in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

