# Generated from default/object.tt
package Paws::CodePipeline::StageDeclaration;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_ActionDeclaration CodePipeline_BlockerDeclaration/;
  has Actions => (is => 'ro', isa => ArrayRef[CodePipeline_ActionDeclaration], required => 1);
  has Blockers => (is => 'ro', isa => ArrayRef[CodePipeline_BlockerDeclaration]);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Actions' => {
                              'class' => 'Paws::CodePipeline::ActionDeclaration',
                              'type' => 'ArrayRef[CodePipeline_ActionDeclaration]'
                            },
               'Blockers' => {
                               'type' => 'ArrayRef[CodePipeline_BlockerDeclaration]',
                               'class' => 'Paws::CodePipeline::BlockerDeclaration'
                             }
             },
  'IsRequired' => {
                    'Actions' => 1,
                    'Name' => 1
                  },
  'NameInRequest' => {
                       'Name' => 'name',
                       'Actions' => 'actions',
                       'Blockers' => 'blockers'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::StageDeclaration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::StageDeclaration object:

  $service_obj->Method(Att1 => { Actions => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::StageDeclaration object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Represents information about a stage and its definition.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[CodePipeline_ActionDeclaration]

  The actions included in a stage.


=head2 Blockers => ArrayRef[CodePipeline_BlockerDeclaration]

  Reserved for future use.


=head2 B<REQUIRED> Name => Str

  The name of the stage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

