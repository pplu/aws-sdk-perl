
package Paws::EMR::TerminateJobFlows;
  use Moose;
  has JobFlowIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateJobFlows');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::TerminateJobFlows - Arguments for method TerminateJobFlows on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateJobFlows on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method TerminateJobFlows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateJobFlows.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    $elasticmapreduce->TerminateJobFlows(
      JobFlowIds => [
        'MyXmlString', ...    # max: 10280
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/TerminateJobFlows>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobFlowIds => ArrayRef[Str|Undef]

A list of job flows to be shutdown.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateJobFlows in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

