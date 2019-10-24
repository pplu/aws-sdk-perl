
package Paws::ManagedBlockchain::GetNetwork;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw//;
  has NetworkId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetNetwork');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/networks/{networkId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ManagedBlockchain::GetNetworkOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'NetworkId' => 'networkId'
                  },
  'IsRequired' => {
                    'NetworkId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::GetNetwork - Arguments for method GetNetwork on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetNetwork on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method GetNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetNetwork.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $GetNetworkOutput = $managedblockchain->GetNetwork(
      NetworkId => 'MyResourceIdString',

    );

    # Results:
    my $Network = $GetNetworkOutput->Network;

    # Returns a L<Paws::ManagedBlockchain::GetNetworkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/GetNetwork>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network to get information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetNetwork in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

