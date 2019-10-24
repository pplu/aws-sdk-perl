# Generated from default/object.tt
package Paws::CodePipeline::ActionState;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_ActionRevision CodePipeline_ActionExecution/;
  has ActionName => (is => 'ro', isa => Str);
  has CurrentRevision => (is => 'ro', isa => CodePipeline_ActionRevision);
  has EntityUrl => (is => 'ro', isa => Str);
  has LatestExecution => (is => 'ro', isa => CodePipeline_ActionExecution);
  has RevisionUrl => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EntityUrl' => {
                                'type' => 'Str'
                              },
               'ActionName' => {
                                 'type' => 'Str'
                               },
               'RevisionUrl' => {
                                  'type' => 'Str'
                                },
               'CurrentRevision' => {
                                      'class' => 'Paws::CodePipeline::ActionRevision',
                                      'type' => 'CodePipeline_ActionRevision'
                                    },
               'LatestExecution' => {
                                      'class' => 'Paws::CodePipeline::ActionExecution',
                                      'type' => 'CodePipeline_ActionExecution'
                                    }
             },
  'NameInRequest' => {
                       'EntityUrl' => 'entityUrl',
                       'ActionName' => 'actionName',
                       'RevisionUrl' => 'revisionUrl',
                       'CurrentRevision' => 'currentRevision',
                       'LatestExecution' => 'latestExecution'
                     }
}
;
    return $Params_map;
  }


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


=head2 CurrentRevision => CodePipeline_ActionRevision

  Represents information about the version (or revision) of an action.


=head2 EntityUrl => Str

  A URL link for more information about the state of the action, such as
a deployment group details page.


=head2 LatestExecution => CodePipeline_ActionExecution

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

