
package Paws::OpsWorks::DescribeEcsClusters;
  use Moose;
  has EcsClusterArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEcsClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeEcsClustersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeEcsClusters - Arguments for method DescribeEcsClusters on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEcsClusters on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method DescribeEcsClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEcsClusters.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $DescribeEcsClustersResult = $opsworks->DescribeEcsClusters(
      EcsClusterArns => [ 'MyString', ... ],    # OPTIONAL
      MaxResults     => 1,                      # OPTIONAL
      NextToken      => 'MyString',             # OPTIONAL
      StackId        => 'MyString',             # OPTIONAL
    );

    # Results:
    my $EcsClusters = $DescribeEcsClustersResult->EcsClusters;
    my $NextToken   = $DescribeEcsClustersResult->NextToken;

    # Returns a L<Paws::OpsWorks::DescribeEcsClustersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/DescribeEcsClusters>

=head1 ATTRIBUTES


=head2 EcsClusterArns => ArrayRef[Str|Undef]

A list of ARNs, one for each cluster to be described.



=head2 MaxResults => Int

To receive a paginated response, use this parameter to specify the
maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

If the previous paginated request did not return all of the remaining
results, the response object'sC<NextToken> parameter value is set to a
token. To retrieve the next set of results, call C<DescribeEcsClusters>
again and assign that token to the request object's C<NextToken>
parameter. If there are no remaining results, the previous response
object's C<NextToken> parameter is set to C<null>.



=head2 StackId => Str

A stack ID. C<DescribeEcsClusters> returns a description of the cluster
that is registered with the stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEcsClusters in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

