
package Paws::CodeStarConnections::CreateHost;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ProviderEndpoint => (is => 'ro', isa => 'Str', required => 1);
  has ProviderType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarConnections::Tag]');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::CodeStarConnections::VpcConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHost');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarConnections::CreateHostOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::CreateHost - Arguments for method CreateHost on L<Paws::CodeStarConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHost on the
L<AWS CodeStar connections|Paws::CodeStarConnections> service. Use the attributes of this class
as arguments to method CreateHost.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHost.

=head1 SYNOPSIS

    my $codestar-connections = Paws->service('CodeStarConnections');
    my $CreateHostOutput = $codestar -connections->CreateHost(
      Name             => 'MyHostName',
      ProviderEndpoint => 'MyUrl',
      ProviderType     => 'Bitbucket',
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
      VpcConfiguration => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # min: 11, max: 20
        ],                            # min: 1, max: 10
        SubnetIds => [
          'MySubnetId', ...           # min: 15, max: 24
        ],                            # min: 1, max: 10
        VpcId          => 'MyVpcId',             # min: 12, max: 21
        TlsCertificate => 'MyTlsCertificate',    # min: 1, max: 16384; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $HostArn = $CreateHostOutput->HostArn;
    my $Tags    = $CreateHostOutput->Tags;

    # Returns a L<Paws::CodeStarConnections::CreateHostOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-connections/CreateHost>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the host to be created. The name must be unique in the
calling AWS account.



=head2 B<REQUIRED> ProviderEndpoint => Str

The endpoint of the infrastructure to be represented by the host after
it is created.



=head2 B<REQUIRED> ProviderType => Str

The name of the installed provider to be associated with your
connection. The host resource represents the infrastructure where your
provider type is installed. The valid provider type is GitHub
Enterprise Server.

Valid values are: C<"Bitbucket">, C<"GitHub">, C<"GitHubEnterpriseServer">

=head2 Tags => ArrayRef[L<Paws::CodeStarConnections::Tag>]





=head2 VpcConfiguration => L<Paws::CodeStarConnections::VpcConfiguration>

The VPC configuration to be provisioned for the host. A VPC must be
configured and the infrastructure to be represented by the host must
already be connected to the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHost in L<Paws::CodeStarConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

