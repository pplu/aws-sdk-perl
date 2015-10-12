package Paws::CodePipeline::ActionExecution;
  use Moose;
  has errorDetails => (is => 'ro', isa => 'Paws::CodePipeline::ErrorDetails');
  has externalExecutionId => (is => 'ro', isa => 'Str');
  has externalExecutionUrl => (is => 'ro', isa => 'Str');
  has lastStatusChange => (is => 'ro', isa => 'Str');
  has percentComplete => (is => 'ro', isa => 'Int');
  has status => (is => 'ro', isa => 'Str');
  has summary => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionExecution

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionExecution object:

  $service_obj->Method(Att1 => { errorDetails => $value, ..., summary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->errorDetails

=head1 ATTRIBUTES

=head2 errorDetails => L<Paws::CodePipeline::ErrorDetails>

  The details of an error returned by a URL external to AWS.

=head2 externalExecutionId => Str

  The external ID of the run of the action.

=head2 externalExecutionUrl => Str

  The URL of a resource external to AWS that will be used when running
the action, for example an external repository URL.

=head2 lastStatusChange => Str

  The last status change of the action.

=head2 percentComplete => Int

  A percentage of completeness of the action as it runs.

=head2 status => Str

  The status of the action, or for a completed action, the last status of
the action.

=head2 summary => Str

  A summary of the run of the action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

