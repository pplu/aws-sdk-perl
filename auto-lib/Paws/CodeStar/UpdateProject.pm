
package Paws::CodeStar::UpdateProject;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::UpdateProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::UpdateProject - Arguments for method UpdateProject on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the
L<AWS CodeStar|Paws::CodeStar> service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

=head1 SYNOPSIS

    my $codestar = Paws->service('CodeStar');
    my $UpdateProjectResult = $codestar->UpdateProject(
      Id          => 'MyProjectId',
      Description => 'MyProjectDescription',    # OPTIONAL
      Name        => 'MyProjectName',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar/UpdateProject>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the project, if any.



=head2 B<REQUIRED> Id => Str

The ID of the project you want to update.



=head2 Name => Str

The name of the project you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

