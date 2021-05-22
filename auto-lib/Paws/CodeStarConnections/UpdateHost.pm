
package Paws::CodeStarConnections::UpdateHost;
  use Moose;
  has HostArn => (is => 'ro', isa => 'Str', required => 1);
  has ProviderEndpoint => (is => 'ro', isa => 'Str');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::CodeStarConnections::VpcConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHost');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarConnections::UpdateHostOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::UpdateHost - Arguments for method UpdateHost on L<Paws::CodeStarConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHost on the
L<AWS CodeStar connections|Paws::CodeStarConnections> service. Use the attributes of this class
as arguments to method UpdateHost.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHost.

=head1 SYNOPSIS

    my $codestar-connections = Paws->service('CodeStarConnections');
    my $UpdateHostOutput = $codestar -connections->UpdateHost(
      HostArn          => 'MyHostArn',
      ProviderEndpoint => 'MyUrl',       # OPTIONAL
      VpcConfiguration => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...       # min: 11, max: 20
        ],                               # min: 1, max: 10
        SubnetIds => [
          'MySubnetId', ...              # min: 15, max: 24
        ],                               # min: 1, max: 10
        VpcId          => 'MyVpcId',             # min: 12, max: 21
        TlsCertificate => 'MyTlsCertificate',    # min: 1, max: 16384; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-connections/UpdateHost>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostArn => Str

The Amazon Resource Name (ARN) of the host to be updated.



=head2 ProviderEndpoint => Str

The URL or endpoint of the host to be updated.



=head2 VpcConfiguration => L<Paws::CodeStarConnections::VpcConfiguration>

The VPC configuration of the host to be updated. A VPC must be
configured and the infrastructure to be represented by the host must
already be connected to the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHost in L<Paws::CodeStarConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

