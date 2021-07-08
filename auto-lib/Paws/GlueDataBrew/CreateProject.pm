
package Paws::GlueDataBrew::CreateProject;
  use Moose;
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RecipeName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Sample => (is => 'ro', isa => 'Paws::GlueDataBrew::Sample');
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::CreateProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::CreateProject - Arguments for method CreateProject on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $CreateProjectResponse = $databrew->CreateProject(
      DatasetName => 'MyDatasetName',
      Name        => 'MyProjectName',
      RecipeName  => 'MyRecipeName',
      RoleArn     => 'MyArn',
      Sample      => {
        Type => 'FIRST_N',    # values: FIRST_N, LAST_N, RANDOM
        Size => 1,            # min: 1, max: 5000; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Name = $CreateProjectResponse->Name;

    # Returns a L<Paws::GlueDataBrew::CreateProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/CreateProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetName => Str

The name of an existing dataset to associate this project with.



=head2 B<REQUIRED> Name => Str

A unique name for the new project. Valid characters are alphanumeric
(A-Z, a-z, 0-9), hyphen (-), period (.), and space.



=head2 B<REQUIRED> RecipeName => Str

The name of an existing recipe to associate with the project.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role to be assumed for this request.



=head2 Sample => L<Paws::GlueDataBrew::Sample>





=head2 Tags => L<Paws::GlueDataBrew::TagMap>

Metadata tags to apply to this project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

