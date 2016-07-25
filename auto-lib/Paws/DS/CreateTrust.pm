
package Paws::DS::CreateTrust;
  use Moose;
  has ConditionalForwarderIpAddrs => (is => 'ro', isa => 'ArrayRef[Str]');
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has RemoteDomainName => (is => 'ro', isa => 'Str', required => 1);
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

Paws::DS::CreateTrust - Arguments for method CreateTrust on Paws::DS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrust on the 
AWS Directory Service service. Use the attributes of this class
as arguments to method CreateTrust.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrust.

As an example:

  $service_obj->CreateTrust(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ConditionalForwarderIpAddrs => ArrayRef[Str]

The IP addresses of the remote DNS server associated with
RemoteDomainName.



=head2 B<REQUIRED> DirectoryId => Str

The Directory ID of the Microsoft AD in the AWS cloud for which to
establish the trust relationship.



=head2 B<REQUIRED> RemoteDomainName => Str

The Fully Qualified Domain Name (FQDN) of the external domain for which
to create the trust relationship.



=head2 B<REQUIRED> TrustDirection => Str

The direction of the trust relationship.

Valid values are: C<"One-Way: Outgoing">, C<"One-Way: Incoming">, C<"Two-Way">

=head2 B<REQUIRED> TrustPassword => Str

The trust password. The must be the same password that was used when
creating the trust relationship on the external domain.



=head2 TrustType => Str

The trust relationship type.

Valid values are: C<"Forest">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrust in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

