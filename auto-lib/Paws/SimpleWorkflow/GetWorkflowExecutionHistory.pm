
package Paws::SimpleWorkflow::GetWorkflowExecutionHistory {
  use Moose;
  has domain => (is => 'ro', isa => 'Str', required => 1);
  has execution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', required => 1);
  has maximumPageSize => (is => 'ro', isa => 'Int');
  has nextPageToken => (is => 'ro', isa => 'Str');
  has reverseOrder => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflowExecutionHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::History');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::GetWorkflowExecutionHistory - Arguments for method GetWorkflowExecutionHistory on Paws::SimpleWorkflow

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflowExecutionHistory on the 
Amazon Simple Workflow Service service. Use the attributes of this class
as arguments to method GetWorkflowExecutionHistory.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflowExecutionHistory.

As an example:

  $service_obj->GetWorkflowExecutionHistory(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> domain => Str

  

The name of the domain containing the workflow execution.










=head2 B<REQUIRED> execution => Paws::SimpleWorkflow::WorkflowExecution

  

Specifies the workflow execution for which to return the history.










=head2 maximumPageSize => Int

  

Specifies the maximum number of history events returned in one page.
The next page in the result is identified by the C<NextPageToken>
returned. By default 100 history events are returned in a page but the
caller can override this value to a page size I<smaller> than the
default. You cannot specify a page size larger than 100. Note that the
number of events may be less than the maxiumum page size, in which
case, the returned page will have fewer results than the
maximumPageSize specified.










=head2 nextPageToken => Str

  

If a C<NextPageToken> is returned, the result has more than one pages.
To get the next page, repeat the call and specify the nextPageToken
with all other arguments unchanged.










=head2 reverseOrder => Bool

  

When set to C<true>, returns the events in reverse order. By default
the results are returned in ascending order of the C<eventTimeStamp> of
the events.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for GetWorkflowExecutionHistory in Paws::SimpleWorkflow

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

