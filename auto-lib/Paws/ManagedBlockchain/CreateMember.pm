
package Paws::ManagedBlockchain::CreateMember;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has InvitationId => (is => 'ro', isa => 'Str', required => 1);
  has MemberConfiguration => (is => 'ro', isa => 'Paws::ManagedBlockchain::MemberConfiguration', required => 1);
  has NetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'networkId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMember');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/networks/{networkId}/members');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::CreateMemberOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::CreateMember - Arguments for method CreateMember on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMember on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method CreateMember.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMember.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $CreateMemberOutput = $managedblockchain->CreateMember(
      ClientRequestToken  => 'MyClientRequestTokenString',
      InvitationId        => 'MyResourceIdString',
      MemberConfiguration => {
        FrameworkConfiguration => {
          Fabric => {
            AdminPassword => 'MyPasswordString',    # min: 8, max: 32
            AdminUsername => 'MyUsernameString',    # min: 1, max: 16

          },    # OPTIONAL
        },
        Name        => 'MyNetworkMemberNameString',    # min: 1, max: 64
        Description => 'MyDescriptionString',          # max: 128; OPTIONAL
        LogPublishingConfiguration => {
          Fabric => {
            CaLogs => {
              Cloudwatch => {
                Enabled => 1,                          # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Tags => {
          'MyTagKey' => 'MyTagValue',   # key: min: 1, max: 128, value: max: 256
        },    # max: 50; OPTIONAL
      },
      NetworkId => 'MyResourceIdString',

    );

    # Results:
    my $MemberId = $CreateMemberOutput->MemberId;

    # Returns a L<Paws::ManagedBlockchain::CreateMemberOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/CreateMember>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the operation. An idempotent operation completes no more
than one time. This identifier is required only if you make a service
request directly using an HTTP client. It is generated automatically if
you use an AWS SDK or the AWS CLI.



=head2 B<REQUIRED> InvitationId => Str

The unique identifier of the invitation that is sent to the member to
join the network.



=head2 B<REQUIRED> MemberConfiguration => L<Paws::ManagedBlockchain::MemberConfiguration>

Member configuration parameters.



=head2 B<REQUIRED> NetworkId => Str

The unique identifier of the network in which the member is created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMember in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

