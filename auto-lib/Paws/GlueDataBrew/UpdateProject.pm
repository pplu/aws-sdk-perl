
package Paws::GlueDataBrew::UpdateProject;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Sample => (is => 'ro', isa => 'Paws::GlueDataBrew::Sample');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::UpdateProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::UpdateProject - Arguments for method UpdateProject on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $UpdateProjectResponse = $databrew->UpdateProject(
      Name    => 'MyProjectName',
      RoleArn => 'MyArn',
      Sample  => {
        Type => 'FIRST_N',    # values: FIRST_N, LAST_N, RANDOM
        Size => 1,            # min: 1, max: 5000; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $LastModifiedDate = $UpdateProjectResponse->LastModifiedDate;
    my $Name             = $UpdateProjectResponse->Name;

    # Returns a L<Paws::GlueDataBrew::UpdateProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/UpdateProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the project to be updated.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to be assumed for this
request.



=head2 Sample => L<Paws::GlueDataBrew::Sample>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

