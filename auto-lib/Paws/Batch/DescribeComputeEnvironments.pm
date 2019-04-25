
package Paws::Batch::DescribeComputeEnvironments;
  use Moose;
  has ComputeEnvironments => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'computeEnvironments');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeComputeEnvironments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/describecomputeenvironments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::DescribeComputeEnvironmentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeComputeEnvironments - Arguments for method DescribeComputeEnvironments on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeComputeEnvironments on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method DescribeComputeEnvironments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeComputeEnvironments.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    # To describe a compute environment
    # This example describes the P2OnDemand compute environment.
    my $DescribeComputeEnvironmentsResponse =
      $batch->DescribeComputeEnvironments(
      {
        'ComputeEnvironments' => ['P2OnDemand']
      }
      );

    # Results:
    my $computeEnvironments =
      $DescribeComputeEnvironmentsResponse->computeEnvironments;

    # Returns a L<Paws::Batch::DescribeComputeEnvironmentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/DescribeComputeEnvironments>

=head1 ATTRIBUTES


=head2 ComputeEnvironments => ArrayRef[Str|Undef]

A list of up to 100 compute environment names or full Amazon Resource
Name (ARN) entries.



=head2 MaxResults => Int

The maximum number of cluster results returned by
C<DescribeComputeEnvironments> in paginated output. When this parameter
is used, C<DescribeComputeEnvironments> only returns C<maxResults>
results in a single page along with a C<nextToken> response element.
The remaining results of the initial request can be seen by sending
another C<DescribeComputeEnvironments> request with the returned
C<nextToken> value. This value can be between 1 and 100. If this
parameter is not used, then C<DescribeComputeEnvironments> returns up
to 100 results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<DescribeComputeEnvironments> request where C<maxResults> was used and
the results exceeded the value of that parameter. Pagination continues
from the end of the previous results that returned the C<nextToken>
value. This value is C<null> when there are no more results to return.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeComputeEnvironments in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

