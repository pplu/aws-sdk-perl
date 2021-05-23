
package Paws::ElasticInference::DescribeAccelerators;
  use Moose;
  has AcceleratorIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'acceleratorIds');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ElasticInference::Filter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccelerators');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describe-accelerators');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticInference::DescribeAcceleratorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticInference::DescribeAccelerators - Arguments for method DescribeAccelerators on L<Paws::ElasticInference>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccelerators on the
L<Amazon Elastic  Inference|Paws::ElasticInference> service. Use the attributes of this class
as arguments to method DescribeAccelerators.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccelerators.

=head1 SYNOPSIS

    my $api.elastic-inference = Paws->service('ElasticInference');
    my $DescribeAcceleratorsResponse =
      $api . elastic-inference->DescribeAccelerators(
      AcceleratorIds => [
        'MyAcceleratorId', ...    # min: 1, max: 256
      ],                          # OPTIONAL
      Filters => [
        {
          Name   => 'MyFilterName',    # min: 1, max: 128; OPTIONAL
          Values => [
            'MyString', ...            # max: 500000
          ],                           # max: 100; OPTIONAL
        },
        ...
      ],                               # OPTIONAL
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'MyNextToken',     # OPTIONAL
      );

    # Results:
    my $AcceleratorSet = $DescribeAcceleratorsResponse->AcceleratorSet;
    my $NextToken      = $DescribeAcceleratorsResponse->NextToken;

    # Returns a L<Paws::ElasticInference::DescribeAcceleratorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.elastic-inference/DescribeAccelerators>

=head1 ATTRIBUTES


=head2 AcceleratorIds => ArrayRef[Str|Undef]

The IDs of the accelerators to describe.



=head2 Filters => ArrayRef[L<Paws::ElasticInference::Filter>]

One or more filters. Filter names and values are case-sensitive. Valid
filter names are: accelerator-types: can provide a list of accelerator
type names to filter for. instance-id: can provide a list of EC2
instance ids to filter for.



=head2 MaxResults => Int

The total number of items to return in the command's output. If the
total number of items available is more than the value specified, a
NextToken is provided in the command's output. To resume pagination,
provide the NextToken value in the starting-token argument of a
subsequent command. Do not use the NextToken response element directly
outside of the AWS CLI.



=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccelerators in L<Paws::ElasticInference>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

