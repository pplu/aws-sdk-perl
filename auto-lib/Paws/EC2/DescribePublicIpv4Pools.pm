
package Paws::EC2::DescribePublicIpv4Pools;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PoolIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'PoolId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePublicIpv4Pools');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribePublicIpv4PoolsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribePublicIpv4Pools - Arguments for method DescribePublicIpv4Pools on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePublicIpv4Pools on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribePublicIpv4Pools.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePublicIpv4Pools.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribePublicIpv4PoolsResult = $ec2->DescribePublicIpv4Pools(
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                             # OPTIONAL
      NextToken  => 'MyNextToken',                 # OPTIONAL
      PoolIds    => [ 'MyIpv4PoolEc2Id', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken       = $DescribePublicIpv4PoolsResult->NextToken;
    my $PublicIpv4Pools = $DescribePublicIpv4PoolsResult->PublicIpv4Pools;

    # Returns a L<Paws::EC2::DescribePublicIpv4PoolsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribePublicIpv4Pools>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 PoolIds => ArrayRef[Str|Undef]

The IDs of the address pools.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePublicIpv4Pools in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

