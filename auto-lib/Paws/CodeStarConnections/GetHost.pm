
package Paws::CodeStarConnections::GetHost;
  use Moose;
  has HostArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHost');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarConnections::GetHostOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::GetHost - Arguments for method GetHost on L<Paws::CodeStarConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHost on the
L<AWS CodeStar connections|Paws::CodeStarConnections> service. Use the attributes of this class
as arguments to method GetHost.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHost.

=head1 SYNOPSIS

    my $codestar-connections = Paws->service('CodeStarConnections');
    my $GetHostOutput = $codestar -connections->GetHost(
      HostArn => 'MyHostArn',

    );

    # Results:
    my $Name             = $GetHostOutput->Name;
    my $ProviderEndpoint = $GetHostOutput->ProviderEndpoint;
    my $ProviderType     = $GetHostOutput->ProviderType;
    my $Status           = $GetHostOutput->Status;
    my $VpcConfiguration = $GetHostOutput->VpcConfiguration;

    # Returns a L<Paws::CodeStarConnections::GetHostOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-connections/GetHost>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostArn => Str

The Amazon Resource Name (ARN) of the requested host.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHost in L<Paws::CodeStarConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

