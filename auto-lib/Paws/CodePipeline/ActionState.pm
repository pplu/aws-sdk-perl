package Paws::CodePipeline::ActionState;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', request_name => 'actionName', traits => ['NameInRequest']);
  has CurrentRevision => (is => 'ro', isa => 'Paws::CodePipeline::ActionRevision', request_name => 'currentRevision', traits => ['NameInRequest']);
  has EntityUrl => (is => 'ro', isa => 'Str', request_name => 'entityUrl', traits => ['NameInRequest']);
  has LatestExecution => (is => 'ro', isa => 'Paws::CodePipeline::ActionExecution', request_name => 'latestExecution', traits => ['NameInRequest']);
  has RevisionUrl => (is => 'ro', isa => 'Str', request_name => 'revisionUrl', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionState object:

  $service_obj->Method(Att1 => { ActionName => $value, ..., RevisionUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionState object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionName

=head1 DESCRIPTION

Represents information about the state of an action.

=head1 ATTRIBUTES


=head2 ActionName => Str

  The name of the action.


=head2 CurrentRevision => L<Paws::CodePipeline::ActionRevision>

  Represents information about the version (or revision) of an action.


=head2 EntityUrl => Str

  A URL link for more information about the state of the action, such as
a deployment group details page.


=head2 LatestExecution => L<Paws::CodePipeline::ActionExecution>

  Represents information about the run of an action.


=head2 RevisionUrl => Str

  A URL link for more information about the revision, such as a commit
details page.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

