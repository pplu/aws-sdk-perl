# Generated from json/callargs_class.tt

package Paws::CodeStar::CreateProject;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeStar::Types qw/CodeStar_Code CodeStar_Tags CodeStar_Toolchain/;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceCode => (is => 'ro', isa => ArrayRef[CodeStar_Code], predicate => 1);
  has Tags => (is => 'ro', isa => CodeStar_Tags, predicate => 1);
  has Toolchain => (is => 'ro', isa => CodeStar_Toolchain, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateProject');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeStar::CreateProjectResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Toolchain' => {
                                'class' => 'Paws::CodeStar::Toolchain',
                                'type' => 'CodeStar_Toolchain'
                              },
               'Id' => {
                         'type' => 'Str'
                       },
               'SourceCode' => {
                                 'class' => 'Paws::CodeStar::Code',
                                 'type' => 'ArrayRef[CodeStar_Code]'
                               },
               'Tags' => {
                           'class' => 'Paws::CodeStar::Tags',
                           'type' => 'CodeStar_Tags'
                         },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ClientRequestToken' => 'clientRequestToken',
                       'Toolchain' => 'toolchain',
                       'Id' => 'id',
                       'SourceCode' => 'sourceCode',
                       'Tags' => 'tags',
                       'Name' => 'name',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'Id' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::CreateProject - Arguments for method CreateProject on L<Paws::CodeStar>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<AWS CodeStar|Paws::CodeStar> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $codestar = Paws->service('CodeStar');
    my $CreateProjectResult = $codestar->CreateProject(
      Id                 => 'MyProjectId',
      Name               => 'MyProjectName',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Description        => 'MyProjectDescription',    # OPTIONAL
      SourceCode         => [
        {
          Destination => {
            CodeCommit => {
              Name => 'MyRepositoryName',              # min: 1, max: 100

            },    # OPTIONAL
            GitHub => {
              IssuesEnabled     => 1,
              Name              => 'MyRepositoryName',        # min: 1, max: 100
              Owner             => 'MyRepositoryOwner',       # min: 1, max: 100
              PrivateRepository => 1,
              Token             => 'MyGitHubPersonalToken',   # min: 1
              Type              => 'MyRepositoryType',
              Description =>
                'MyRepositoryDescription',    # min: 1, max: 1000; OPTIONAL
            },    # OPTIONAL
          },
          Source => {
            S3 => {
              BucketKey  => 'MyBucketKey',     # OPTIONAL
              BucketName => 'MyBucketName',    # min: 3, max: 63; OPTIONAL
            },

          },

        },
        ...
      ],                                       # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Toolchain => {
        Source => {
          S3 => {
            BucketKey  => 'MyBucketKey',     # OPTIONAL
            BucketName => 'MyBucketName',    # min: 3, max: 63; OPTIONAL
          },

        },
        RoleArn         => 'MyRoleArn',      # min: 1, max: 1224; OPTIONAL
        StackParameters => {
          'MyTemplateParameterKey' => 'MyTemplateParameterValue'
          ,    # key: min: 1, max: 30, value: min: 1, max: 100
        },    # max: 25; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn                = $CreateProjectResult->Arn;
    my $ClientRequestToken = $CreateProjectResult->ClientRequestToken;
    my $Id                 = $CreateProjectResult->Id;
    my $ProjectTemplateId  = $CreateProjectResult->ProjectTemplateId;

    # Returns a L<Paws::CodeStar::CreateProjectResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar/CreateProject>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A user- or system-generated token that identifies the entity that
requested project creation. This token can be used to repeat the
request.



=head2 Description => Str

The description of the project, if any.



=head2 B<REQUIRED> Id => Str

The ID of the project to be created in AWS CodeStar.



=head2 B<REQUIRED> Name => Str

The display name for the project to be created in AWS CodeStar.



=head2 SourceCode => ArrayRef[CodeStar_Code]

A list of the Code objects submitted with the project request. If this
parameter is specified, the request must also include the toolchain
parameter.



=head2 Tags => CodeStar_Tags

The tags created for the project.



=head2 Toolchain => CodeStar_Toolchain

The name of the toolchain template file submitted with the project
request. If this parameter is specified, the request must also include
the sourceCode parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

