
package Paws::NetworkManager::CreateGlobalNetwork;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGlobalNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateGlobalNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateGlobalNetwork - Arguments for method CreateGlobalNetwork on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGlobalNetwork on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateGlobalNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGlobalNetwork.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateGlobalNetworkResponse = $networkmanager->CreateGlobalNetwork(
      Description => 'MyString',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $GlobalNetwork = $CreateGlobalNetworkResponse->GlobalNetwork;

    # Returns a L<Paws::NetworkManager::CreateGlobalNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateGlobalNetwork>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the global network.

Length Constraints: Maximum length of 256 characters.



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The tags to apply to the resource during creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGlobalNetwork in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

