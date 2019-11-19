
package Paws::ManagedBlockchain::CreateNetwork;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_VotingPolicy ManagedBlockchain_NetworkFrameworkConfiguration ManagedBlockchain_MemberConfiguration/;
  has ClientRequestToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Framework => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FrameworkConfiguration => (is => 'ro', isa => ManagedBlockchain_NetworkFrameworkConfiguration, predicate => 1);
  has FrameworkVersion => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MemberConfiguration => (is => 'ro', isa => ManagedBlockchain_MemberConfiguration, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VotingPolicy => (is => 'ro', isa => ManagedBlockchain_VotingPolicy, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateNetwork');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/networks');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ManagedBlockchain::CreateNetworkOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Name' => {
                           'type' => 'Str'
                         },
               'Framework' => {
                                'type' => 'Str'
                              },
               'VotingPolicy' => {
                                   'type' => 'ManagedBlockchain_VotingPolicy',
                                   'class' => 'Paws::ManagedBlockchain::VotingPolicy'
                                 },
               'MemberConfiguration' => {
                                          'type' => 'ManagedBlockchain_MemberConfiguration',
                                          'class' => 'Paws::ManagedBlockchain::MemberConfiguration'
                                        },
               'FrameworkConfiguration' => {
                                             'class' => 'Paws::ManagedBlockchain::NetworkFrameworkConfiguration',
                                             'type' => 'ManagedBlockchain_NetworkFrameworkConfiguration'
                                           },
               'FrameworkVersion' => {
                                       'type' => 'Str'
                                     },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'FrameworkVersion' => 1,
                    'MemberConfiguration' => 1,
                    'VotingPolicy' => 1,
                    'Framework' => 1,
                    'Name' => 1,
                    'ClientRequestToken' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::CreateNetwork - Arguments for method CreateNetwork on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetwork on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method CreateNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetwork.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $CreateNetworkOutput = $managedblockchain->CreateNetwork(
      ClientRequestToken  => 'MyClientRequestTokenString',
      Framework           => 'HYPERLEDGER_FABRIC',
      FrameworkVersion    => 'MyFrameworkVersionString',
      MemberConfiguration => {
        FrameworkConfiguration => {
          Fabric => {
            AdminPassword => 'MyPasswordString',    # min: 8, max: 32
            AdminUsername => 'MyUsernameString',    # min: 1, max: 16

          },    # OPTIONAL
        },
        Name        => 'MyNetworkMemberNameString',    # min: 1, max: 64
        Description => 'MyDescriptionString',          # max: 128; OPTIONAL
      },
      Name         => 'MyNameString',
      VotingPolicy => {
        ApprovalThresholdPolicy => {
          ProposalDurationInHours => 1,             # min: 1, max: 168; OPTIONAL
          ThresholdComparator     => 'GREATER_THAN'
          ,    # values: GREATER_THAN, GREATER_THAN_OR_EQUAL_TO; OPTIONAL
          ThresholdPercentage => 1,    # max: 100; OPTIONAL
        },    # OPTIONAL
      },
      Description            => 'MyDescriptionString',    # OPTIONAL
      FrameworkConfiguration => {
        Fabric => {
          Edition => 'STARTER',    # values: STARTER, STANDARD

        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $MemberId  = $CreateNetworkOutput->MemberId;
    my $NetworkId = $CreateNetworkOutput->NetworkId;

    # Returns a L<Paws::ManagedBlockchain::CreateNetworkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/CreateNetwork>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the operation. An idempotent operation completes no more
than one time. This identifier is required only if you make a service
request directly using an HTTP client. It is generated automatically if
you use an AWS SDK or the AWS CLI.



=head2 Description => Str

An optional description for the network.



=head2 B<REQUIRED> Framework => Str

The blockchain framework that the network uses.

Valid values are: C<"HYPERLEDGER_FABRIC">

=head2 FrameworkConfiguration => ManagedBlockchain_NetworkFrameworkConfiguration

Configuration properties of the blockchain framework relevant to the
network configuration.



=head2 B<REQUIRED> FrameworkVersion => Str

The version of the blockchain framework that the network uses.



=head2 B<REQUIRED> MemberConfiguration => ManagedBlockchain_MemberConfiguration

Configuration properties for the first member within the network.



=head2 B<REQUIRED> Name => Str

The name of the network.



=head2 B<REQUIRED> VotingPolicy => ManagedBlockchain_VotingPolicy

The voting rules used by the network to determine if a proposal is
approved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetwork in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

