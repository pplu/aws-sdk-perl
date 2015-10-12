package Paws::CodePipeline::StageDeclaration;
  use Moose;
  has actions => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ActionDeclaration]', required => 1);
  has blockers => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::BlockerDeclaration]');
  has name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::StageDeclaration

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::StageDeclaration object:

  $service_obj->Method(Att1 => { actions => $value, ..., name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::StageDeclaration object:

  $result = $service_obj->Method(...);
  $result->Att1->actions

=head1 ATTRIBUTES

=head2 B<REQUIRED> actions => ArrayRef[L<Paws::CodePipeline::ActionDeclaration>]

  The actions included in a stage.

=head2 blockers => ArrayRef[L<Paws::CodePipeline::BlockerDeclaration>]

  The gates included in a stage.

=head2 B<REQUIRED> name => Str

  The name of the stage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

