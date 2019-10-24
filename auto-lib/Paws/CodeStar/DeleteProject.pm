# Generated from json/callargs_class.tt

package Paws::CodeStar::DeleteProject;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodeStar::Types qw//;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has DeleteStack => (is => 'ro', isa => Bool, predicate => 1);
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteProject');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeStar::DeleteProjectResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Id' => {
                         'type' => 'Str'
                       },
               'DeleteStack' => {
                                  'type' => 'Bool'
                                }
             },
  'NameInRequest' => {
                       'ClientRequestToken' => 'clientRequestToken',
                       'Id' => 'id',
                       'DeleteStack' => 'deleteStack'
                     },
  'IsRequired' => {
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::DeleteProject - Arguments for method DeleteProject on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProject on the
L<AWS CodeStar|Paws::CodeStar> service. Use the attributes of this class
as arguments to method DeleteProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProject.

=head1 SYNOPSIS

    my $codestar = Paws->service('CodeStar');
    my $DeleteProjectResult = $codestar->DeleteProject(
      Id                 => 'MyProjectId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      DeleteStack        => 1,                         # OPTIONAL
    );

    # Results:
    my $ProjectArn = $DeleteProjectResult->ProjectArn;
    my $StackId    = $DeleteProjectResult->StackId;

    # Returns a L<Paws::CodeStar::DeleteProjectResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar/DeleteProject>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A user- or system-generated token that identifies the entity that
requested project deletion. This token can be used to repeat the
request.



=head2 DeleteStack => Bool

Whether to send a delete request for the primary stack in AWS
CloudFormation originally used to generate the project and its
resources. This option will delete all AWS resources for the project
(except for any buckets in Amazon S3) as well as deleting the project
itself. Recommended for most use cases.



=head2 B<REQUIRED> Id => Str

The ID of the project to be deleted in AWS CodeStar.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProject in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

