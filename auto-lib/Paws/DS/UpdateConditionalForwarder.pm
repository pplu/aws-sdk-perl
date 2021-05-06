
package Paws::DS::UpdateConditionalForwarder;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has DnsIpAddrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has RemoteDomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConditionalForwarder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::UpdateConditionalForwarderResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::UpdateConditionalForwarder - Arguments for method UpdateConditionalForwarder on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConditionalForwarder on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method UpdateConditionalForwarder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConditionalForwarder.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $UpdateConditionalForwarderResult = $ds->UpdateConditionalForwarder(
      DirectoryId      => 'MyDirectoryId',
      DnsIpAddrs       => [ 'MyIpAddr', ... ],
      RemoteDomainName => 'MyRemoteDomainName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/UpdateConditionalForwarder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The directory ID of the AWS directory for which to update the
conditional forwarder.



=head2 B<REQUIRED> DnsIpAddrs => ArrayRef[Str|Undef]

The updated IP addresses of the remote DNS server associated with the
conditional forwarder.



=head2 B<REQUIRED> RemoteDomainName => Str

The fully qualified domain name (FQDN) of the remote domain with which
you will set up a trust relationship.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConditionalForwarder in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

