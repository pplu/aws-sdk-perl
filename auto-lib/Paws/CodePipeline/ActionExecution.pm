package Paws::CodePipeline::ActionExecution;
  use Moose;
  has ErrorDetails => (is => 'ro', isa => 'Paws::CodePipeline::ErrorDetails', xmlname => 'errorDetails', request_name => 'errorDetails', traits => ['Unwrapped','NameInRequest']);
  has ExternalExecutionId => (is => 'ro', isa => 'Str', xmlname => 'externalExecutionId', request_name => 'externalExecutionId', traits => ['Unwrapped','NameInRequest']);
  has ExternalExecutionUrl => (is => 'ro', isa => 'Str', xmlname => 'externalExecutionUrl', request_name => 'externalExecutionUrl', traits => ['Unwrapped','NameInRequest']);
  has LastStatusChange => (is => 'ro', isa => 'Paws::API::TimeStamp', xmlname => 'lastStatusChange', request_name => 'lastStatusChange', traits => ['Unwrapped','NameInRequest']);
  has PercentComplete => (is => 'ro', isa => 'Int', xmlname => 'percentComplete', request_name => 'percentComplete', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
  has Summary => (is => 'ro', isa => 'Str', xmlname => 'summary', request_name => 'summary', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionExecution object:

  $service_obj->Method(Att1 => { ErrorDetails => $value, ..., Summary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorDetails

=head1 DESCRIPTION

Represents information about how an action runs.

=head1 ATTRIBUTES


=head2 ErrorDetails => L<Paws::CodePipeline::ErrorDetails>

  The details of an error returned by a URL external to AWS.


=head2 ExternalExecutionId => Str

  The external ID of the run of the action.


=head2 ExternalExecutionUrl => Str

  The URL of a resource external to AWS that will be used when running
the action, for example an external repository URL.


=head2 LastStatusChange => L<Paws::API::TimeStamp>

  The last status change of the action.


=head2 PercentComplete => Int

  A percentage of completeness of the action as it runs.


=head2 Status => Str

  The status of the action, or for a completed action, the last status of
the action.


=head2 Summary => Str

  A summary of the run of the action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

