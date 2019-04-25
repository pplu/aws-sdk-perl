
package Paws::DS::CreateTrust;
  use Moose;
  has ConditionalForwarderIpAddrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has RemoteDomainName => (is => 'ro', isa => 'Str', required => 1);
  has SelectiveAuth => (is => 'ro', isa => 'Str');
  has TrustDirection => (is => 'ro', isa => 'Str', required => 1);
  has TrustPassword => (is => 'ro', isa => 'Str', required => 1);
  has TrustType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrust');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::CreateTrustResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::CreateTrust - Arguments for method CreateTrust on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrust on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method CreateTrust.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrust.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $CreateTrustResult = $ds->CreateTrust(
      DirectoryId                 => 'MyDirectoryId',
      RemoteDomainName            => 'MyRemoteDomainName',
      TrustDirection              => 'One-Way: Outgoing',
      TrustPassword               => 'MyTrustPassword',
      ConditionalForwarderIpAddrs => [ 'MyIpAddr', ... ],    # OPTIONAL
      SelectiveAuth               => 'Enabled',              # OPTIONAL
      TrustType                   => 'Forest',               # OPTIONAL
    );

    # Results:
    my $TrustId = $CreateTrustResult->TrustId;

    # Returns a L<Paws::DS::CreateTrustResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/CreateTrust>

=head1 ATTRIBUTES


=head2 ConditionalForwarderIpAddrs => ArrayRef[Str|Undef]

The IP addresses of the remote DNS server associated with
RemoteDomainName.



=head2 B<REQUIRED> DirectoryId => Str

The Directory ID of the AWS Managed Microsoft AD directory for which to
establish the trust relationship.



=head2 B<REQUIRED> RemoteDomainName => Str

The Fully Qualified Domain Name (FQDN) of the external domain for which
to create the trust relationship.



=head2 SelectiveAuth => Str

Optional parameter to enable selective authentication for the trust.

Valid values are: C<"Enabled">, C<"Disabled">

=head2 B<REQUIRED> TrustDirection => Str

The direction of the trust relationship.

Valid values are: C<"One-Way: Outgoing">, C<"One-Way: Incoming">, C<"Two-Way">

=head2 B<REQUIRED> TrustPassword => Str

The trust password. The must be the same password that was used when
creating the trust relationship on the external domain.



=head2 TrustType => Str

The trust relationship type. C<Forest> is the default.

Valid values are: C<"Forest">, C<"External">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrust in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

