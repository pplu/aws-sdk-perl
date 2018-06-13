
package Paws::EMR::DescribeJobFlows;
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has JobFlowStates => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobFlows');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::DescribeJobFlowsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeJobFlows - Arguments for method DescribeJobFlows on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJobFlows on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method DescribeJobFlows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJobFlows.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $DescribeJobFlowsOutput = $elasticmapreduce->DescribeJobFlows(
      CreatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
      JobFlowIds    => [
        'MyXmlString', ...                       # max: 10280
      ],                                         # OPTIONAL
      JobFlowStates => [
        'STARTING',
        ... # values: STARTING, BOOTSTRAPPING, RUNNING, WAITING, SHUTTING_DOWN, TERMINATED, COMPLETED, FAILED
      ],    # OPTIONAL
    );

    # Results:
    my $JobFlows = $DescribeJobFlowsOutput->JobFlows;

    # Returns a L<Paws::EMR::DescribeJobFlowsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/DescribeJobFlows>

=head1 ATTRIBUTES


=head2 CreatedAfter => Str

Return only job flows created after this date and time.



=head2 CreatedBefore => Str

Return only job flows created before this date and time.



=head2 JobFlowIds => ArrayRef[Str|Undef]

Return only job flows whose job flow ID is contained in this list.



=head2 JobFlowStates => ArrayRef[Str|Undef]

Return only job flows whose state is contained in this list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJobFlows in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

