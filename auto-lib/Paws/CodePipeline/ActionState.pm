package Paws::CodePipeline::ActionState;
  use Moose;
  has actionName => (is => 'ro', isa => 'Str');
  has currentRevision => (is => 'ro', isa => 'Paws::CodePipeline::ActionRevision');
  has entityUrl => (is => 'ro', isa => 'Str');
  has latestExecution => (is => 'ro', isa => 'Paws::CodePipeline::ActionExecution');
  has revisionUrl => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionState

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionState object:

  $service_obj->Method(Att1 => { actionName => $value, ..., revisionUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionState object:

  $result = $service_obj->Method(...);
  $result->Att1->actionName

=head1 ATTRIBUTES

=head2 actionName => Str

  The name of the action.

=head2 currentRevision => Paws::CodePipeline::ActionRevision

  

=head2 entityUrl => Str

  A URL link for more information about the state of the action, such as
a deployment group details page.

=head2 latestExecution => Paws::CodePipeline::ActionExecution

  

=head2 revisionUrl => Str

  A URL link for more information about the revision, such as a commit
details page.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

