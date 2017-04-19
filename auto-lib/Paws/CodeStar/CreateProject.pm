
package Paws::CodeStar::CreateProject;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::CreateProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::CreateProject - Arguments for method CreateProject on Paws::CodeStar

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the 
AWS CodeStar service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

As an example:

  $service_obj->CreateProject(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A user- or system-generated token that identifies the entity that
requested project creation. This token can be used to repeat the
request. It can also be used to identify which user or system made the
request in DescribeProject and ListProjects.



=head2 Description => Str

Optional. The description for the project.



=head2 B<REQUIRED> Id => Str

The ID for the AWS CodeStar project. Project IDs must be unique within
an AWS account. Project IDs cannot exceed 15 characters and cannot
contain capital letters and other restricted symbols. For more
information, see Limits in the AWS CodeStar User Guide.



=head2 B<REQUIRED> Name => Str

The friendly name for the project. This friendly name serves as the
basis for the names for resources associated with the project, such as
a repository name in AWS CodeCommit. The name is limited to 100
characters and cannot contain certain restricted symbols. For more
information, see Limits in the AWS CodeStar User Guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

