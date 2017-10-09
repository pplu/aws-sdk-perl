
package Paws::SimpleWorkflow::RegisterDomain;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has WorkflowExecutionRetentionPeriodInDays => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowExecutionRetentionPeriodInDays' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::RegisterDomain - Arguments for method RegisterDomain on Paws::SimpleWorkflow

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterDomain on the 
Amazon Simple Workflow Service service. Use the attributes of this class
as arguments to method RegisterDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterDomain.

As an example:

  $service_obj->RegisterDomain(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str

A text description of the domain.



=head2 B<REQUIRED> Name => Str

Name of the domain to register. The name must be unique in the region
that the domain is registered in.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not contain the literal string C<arn>.



=head2 B<REQUIRED> WorkflowExecutionRetentionPeriodInDays => Str

The duration (in days) that records and histories of workflow
executions on the domain should be kept by the service. After the
retention period, the workflow execution isn't available in the results
of visibility calls.

If you pass the value C<NONE> or C<0> (zero), then the workflow
execution history isn't retained. As soon as the workflow execution
completes, the execution record and its history are deleted.

The maximum workflow execution retention period is 90 days. For more
information about Amazon SWF service limits, see: Amazon SWF Service
Limits in the I<Amazon SWF Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterDomain in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

