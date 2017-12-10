package Paws::CodePipeline::StageDeclaration;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ActionDeclaration]', request_name => 'actions', traits => ['NameInRequest'], required => 1);
  has Blockers => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::BlockerDeclaration]', request_name => 'blockers', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
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


=head2 B<REQUIRED> Actions => ArrayRef[L<Paws::CodePipeline::ActionDeclaration>]

  The actions included in a stage.


=head2 Blockers => ArrayRef[L<Paws::CodePipeline::BlockerDeclaration>]

  Reserved for future use.


=head2 B<REQUIRED> Name => Str

  The name of the stage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

