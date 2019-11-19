# Generated from json/callargs_class.tt

package Paws::AppStream::CreateImageBuilder;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::AppStream::Types qw/AppStream_VpcConfig AppStream_DomainJoinInfo AppStream_AccessEndpoint AppStream_Tags/;
  has AccessEndpoints => (is => 'ro', isa => ArrayRef[AppStream_AccessEndpoint], predicate => 1);
  has AppstreamAgentVersion => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DisplayName => (is => 'ro', isa => Str, predicate => 1);
  has DomainJoinInfo => (is => 'ro', isa => AppStream_DomainJoinInfo, predicate => 1);
  has EnableDefaultInternetAccess => (is => 'ro', isa => Bool, predicate => 1);
  has IamRoleArn => (is => 'ro', isa => Str, predicate => 1);
  has ImageArn => (is => 'ro', isa => Str, predicate => 1);
  has ImageName => (is => 'ro', isa => Str, predicate => 1);
  has InstanceType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => AppStream_Tags, predicate => 1);
  has VpcConfig => (is => 'ro', isa => AppStream_VpcConfig, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateImageBuilder');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppStream::CreateImageBuilderResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'InstanceType' => 1,
                    'Name' => 1
                  },
  'types' => {
               'IamRoleArn' => {
                                 'type' => 'Str'
                               },
               'ImageArn' => {
                               'type' => 'Str'
                             },
               'ImageName' => {
                                'type' => 'Str'
                              },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'EnableDefaultInternetAccess' => {
                                                  'type' => 'Bool'
                                                },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'Name' => {
                           'type' => 'Str'
                         },
               'VpcConfig' => {
                                'class' => 'Paws::AppStream::VpcConfig',
                                'type' => 'AppStream_VpcConfig'
                              },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::AppStream::Tags',
                           'type' => 'AppStream_Tags'
                         },
               'AppstreamAgentVersion' => {
                                            'type' => 'Str'
                                          },
               'DomainJoinInfo' => {
                                     'class' => 'Paws::AppStream::DomainJoinInfo',
                                     'type' => 'AppStream_DomainJoinInfo'
                                   },
               'AccessEndpoints' => {
                                      'type' => 'ArrayRef[AppStream_AccessEndpoint]',
                                      'class' => 'Paws::AppStream::AccessEndpoint'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateImageBuilder - Arguments for method CreateImageBuilder on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImageBuilder on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateImageBuilder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImageBuilder.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateImageBuilderResult = $appstream2->CreateImageBuilder(
      InstanceType    => 'MyString',
      Name            => 'MyName',
      AccessEndpoints => [
        {
          EndpointType => 'STREAMING',    # values: STREAMING
          VpceId       => 'MyString',     # min: 1
        },
        ...
      ],                                  # OPTIONAL
      AppstreamAgentVersion => 'MyAppstreamAgentVersion',    # OPTIONAL
      Description           => 'MyDescription',              # OPTIONAL
      DisplayName           => 'MyDisplayName',              # OPTIONAL
      DomainJoinInfo        => {
        DirectoryName => 'MyDirectoryName',                  # OPTIONAL
        OrganizationalUnitDistinguishedName =>
          'MyOrganizationalUnitDistinguishedName',    # max: 2000; OPTIONAL
      },    # OPTIONAL
      EnableDefaultInternetAccess => 1,             # OPTIONAL
      IamRoleArn                  => 'MyArn',       # OPTIONAL
      ImageArn                    => 'MyArn',       # OPTIONAL
      ImageName                   => 'MyString',    # OPTIONAL
      Tags                        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [
          'MyString', ...    # min: 1
        ],                   # max: 5; OPTIONAL
        SubnetIds => [
          'MyString', ...    # min: 1
        ],                   # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ImageBuilder = $CreateImageBuilderResult->ImageBuilder;

    # Returns a L<Paws::AppStream::CreateImageBuilderResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateImageBuilder>

=head1 ATTRIBUTES


=head2 AccessEndpoints => ArrayRef[AppStream_AccessEndpoint]

The list of interface VPC endpoint (interface endpoint) objects.
Administrators can connect to the image builder only through the
specified endpoints.



=head2 AppstreamAgentVersion => Str

The version of the AppStream 2.0 agent to use for this image builder.
To use the latest version of the AppStream 2.0 agent, specify [LATEST].



=head2 Description => Str

The description to display.



=head2 DisplayName => Str

The image builder name to display.



=head2 DomainJoinInfo => AppStream_DomainJoinInfo

The name of the directory and organizational unit (OU) to use to join
the image builder to a Microsoft Active Directory domain.



=head2 EnableDefaultInternetAccess => Bool

Enables or disables default internet access for the image builder.



=head2 IamRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to apply to the image
builder. To assume a role, the image builder calls the AWS Security
Token Service (STS) C<AssumeRole> API operation and passes the ARN of
the role to use. The operation creates a new session with temporary
credentials. AppStream 2.0 retrieves the temporary credentials and
creates the B<AppStream_Machine_Role> credential profile on the
instance.

For more information, see Using an IAM Role to Grant Permissions to
Applications and Scripts Running on AppStream 2.0 Streaming Instances
(https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html)
in the I<Amazon AppStream 2.0 Administration Guide>.



=head2 ImageArn => Str

The ARN of the public, private, or shared image to use.



=head2 ImageName => Str

The name of the image used to create the image builder.



=head2 B<REQUIRED> InstanceType => Str

The instance type to use when launching the image builder. The
following instance types are available:

=over

=item *

stream.standard.medium

=item *

stream.standard.large

=item *

stream.compute.large

=item *

stream.compute.xlarge

=item *

stream.compute.2xlarge

=item *

stream.compute.4xlarge

=item *

stream.compute.8xlarge

=item *

stream.memory.large

=item *

stream.memory.xlarge

=item *

stream.memory.2xlarge

=item *

stream.memory.4xlarge

=item *

stream.memory.8xlarge

=item *

stream.graphics-design.large

=item *

stream.graphics-design.xlarge

=item *

stream.graphics-design.2xlarge

=item *

stream.graphics-design.4xlarge

=item *

stream.graphics-desktop.2xlarge

=item *

stream.graphics-pro.4xlarge

=item *

stream.graphics-pro.8xlarge

=item *

stream.graphics-pro.16xlarge

=back




=head2 B<REQUIRED> Name => Str

A unique name for the image builder.



=head2 Tags => AppStream_Tags

The tags to associate with the image builder. A tag is a key-value
pair, and the value is optional. For example, Environment=Test. If you
do not specify a value, Environment=.

Generally allowed characters are: letters, numbers, and spaces
representable in UTF-8, and the following special characters:

_ . : / = + \ - @

If you do not specify a value, the value is set to an empty string.

For more information about tags, see Tagging Your Resources
(https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the I<Amazon AppStream 2.0 Administration Guide>.



=head2 VpcConfig => AppStream_VpcConfig

The VPC configuration for the image builder. You can specify only one
subnet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImageBuilder in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

