
package Paws::EMR::CreateStudio;
  use Moose;
  has AuthMode => (is => 'ro', isa => 'Str', required => 1);
  has DefaultS3Location => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EngineSecurityGroupId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ServiceRole => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Tag]');
  has UserRole => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);
  has WorkspaceSecurityGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStudio');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::CreateStudioOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CreateStudio - Arguments for method CreateStudio on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStudio on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method CreateStudio.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStudio.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $CreateStudioOutput = $elasticmapreduce->CreateStudio(
      AuthMode                 => 'SSO',
      DefaultS3Location        => 'MyXmlString',
      EngineSecurityGroupId    => 'MyXmlStringMaxLen256',
      Name                     => 'MyXmlStringMaxLen256',
      ServiceRole              => 'MyXmlString',
      SubnetIds                => [ 'MyString', ... ],
      UserRole                 => 'MyXmlString',
      VpcId                    => 'MyXmlStringMaxLen256',
      WorkspaceSecurityGroupId => 'MyXmlStringMaxLen256',
      Description              => 'MyXmlStringMaxLen256',    # OPTIONAL
      Tags                     => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                     # OPTIONAL
    );

    # Results:
    my $StudioId = $CreateStudioOutput->StudioId;
    my $Url      = $CreateStudioOutput->Url;

    # Returns a L<Paws::EMR::CreateStudioOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/CreateStudio>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthMode => Str

Specifies whether the Studio authenticates users using single sign-on
(SSO) or IAM. Amazon EMR Studio currently only supports SSO
authentication.

Valid values are: C<"SSO">, C<"IAM">

=head2 B<REQUIRED> DefaultS3Location => Str

The Amazon S3 location to back up Amazon EMR Studio Workspaces and
notebook files.



=head2 Description => Str

A detailed description of the Amazon EMR Studio.



=head2 B<REQUIRED> EngineSecurityGroupId => Str

The ID of the Amazon EMR Studio Engine security group. The Engine
security group allows inbound network traffic from the Workspace
security group, and it must be in the same VPC specified by C<VpcId>.



=head2 B<REQUIRED> Name => Str

A descriptive name for the Amazon EMR Studio.



=head2 B<REQUIRED> ServiceRole => Str

The IAM role that will be assumed by the Amazon EMR Studio. The service
role provides a way for Amazon EMR Studio to interoperate with other
AWS services.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

A list of subnet IDs to associate with the Amazon EMR Studio. A Studio
can have a maximum of 5 subnets. The subnets must belong to the VPC
specified by C<VpcId>. Studio users can create a Workspace in any of
the specified subnets.



=head2 Tags => ArrayRef[L<Paws::EMR::Tag>]

A list of tags to associate with the Amazon EMR Studio. Tags are
user-defined key-value pairs that consist of a required key string with
a maximum of 128 characters, and an optional value string with a
maximum of 256 characters.



=head2 B<REQUIRED> UserRole => Str

The IAM user role that will be assumed by users and groups logged in to
an Amazon EMR Studio. The permissions attached to this IAM role can be
scoped down for each user or group using session policies.



=head2 B<REQUIRED> VpcId => Str

The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate
with the Studio.



=head2 B<REQUIRED> WorkspaceSecurityGroupId => Str

The ID of the Amazon EMR Studio Workspace security group. The Workspace
security group allows outbound network traffic to resources in the
Engine security group, and it must be in the same VPC specified by
C<VpcId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStudio in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

