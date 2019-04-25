
package Paws::AppStream::CreateImageBuilder;
  use Moose;
  has AppstreamAgentVersion => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has DomainJoinInfo => (is => 'ro', isa => 'Paws::AppStream::DomainJoinInfo');
  has EnableDefaultInternetAccess => (is => 'ro', isa => 'Bool');
  has ImageArn => (is => 'ro', isa => 'Str');
  has ImageName => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AppStream::Tags');
  has VpcConfig => (is => 'ro', isa => 'Paws::AppStream::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImageBuilder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateImageBuilderResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
      InstanceType          => 'MyString',
      Name                  => 'MyName',
      AppstreamAgentVersion => 'MyAppstreamAgentVersion',    # OPTIONAL
      Description           => 'MyDescription',              # OPTIONAL
      DisplayName           => 'MyDisplayName',              # OPTIONAL
      DomainJoinInfo        => {
        DirectoryName => 'MyDirectoryName',                  # OPTIONAL
        OrganizationalUnitDistinguishedName =>
          'MyOrganizationalUnitDistinguishedName',    # max: 2000; OPTIONAL
      },    # OPTIONAL
      EnableDefaultInternetAccess => 1,             # OPTIONAL
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


=head2 AppstreamAgentVersion => Str

The version of the AppStream 2.0 agent to use for this image builder.
To use the latest version of the AppStream 2.0 agent, specify [LATEST].



=head2 Description => Str

The description to display.



=head2 DisplayName => Str

The image builder name to display.



=head2 DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>

The name of the directory and organizational unit (OU) to use to join
the image builder to a Microsoft Active Directory domain.



=head2 EnableDefaultInternetAccess => Bool

Enables or disables default internet access for the image builder.



=head2 ImageArn => Str

The ARN of the public, private, or shared image to use.



=head2 ImageName => Str

The name of the image used to create the image builder.



=head2 B<REQUIRED> InstanceType => Str

The instance type to use when launching the image builder.



=head2 B<REQUIRED> Name => Str

A unique name for the image builder.



=head2 Tags => L<Paws::AppStream::Tags>

The tags to associate with the image builder. A tag is a key-value pair
(the value is optional). For example, Environment=Test, or, if you do
not specify a value, Environment=.

If you do not specify a value, we set the value to an empty string.

For more information about tags, see Tagging Your Resources
(http://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the I<Amazon AppStream 2.0 Developer Guide>.



=head2 VpcConfig => L<Paws::AppStream::VpcConfig>

The VPC configuration for the image builder. You can specify only one
subnet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImageBuilder in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

