
package Paws::EC2::DescribeElasticGpus;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ElasticGpuIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ElasticGpuId' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticGpus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeElasticGpusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeElasticGpus - Arguments for method DescribeElasticGpus on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeElasticGpus on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeElasticGpus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeElasticGpus.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeElasticGpusResult = $ec2->DescribeElasticGpus(
      DryRun        => 1,                      # OPTIONAL
      ElasticGpuIds => [ 'MyString', ... ],    # OPTIONAL
      Filters       => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],       # OPTIONAL
        },
        ...
      ],                                       # OPTIONAL
      MaxResults => 1,                         # OPTIONAL
      NextToken  => 'MyString',                # OPTIONAL
    );

    # Results:
    my $ElasticGpuSet = $DescribeElasticGpusResult->ElasticGpuSet;
    my $MaxResults    = $DescribeElasticGpusResult->MaxResults;
    my $NextToken     = $DescribeElasticGpusResult->NextToken;

    # Returns a L<Paws::EC2::DescribeElasticGpusResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeElasticGpus>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ElasticGpuIds => ArrayRef[Str|Undef]

One or more Elastic Graphics accelerator IDs.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<availability-zone> - The Availability Zone in which the Elastic
Graphics accelerator resides.

=item *

C<elastic-gpu-health> - The status of the Elastic Graphics accelerator
(C<OK> | C<IMPAIRED>).

=item *

C<elastic-gpu-state> - The state of the Elastic Graphics accelerator
(C<ATTACHED>).

=item *

C<elastic-gpu-type> - The type of Elastic Graphics accelerator; for
example, C<eg1.medium>.

=item *

C<instance-id> - The ID of the instance to which the Elastic Graphics
accelerator is associated.

=back




=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value. This value can be between 5 and 1000.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeElasticGpus in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

