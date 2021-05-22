
package Paws::Route53Domains::CheckDomainTransferability;
  use Moose;
  has AuthCode => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckDomainTransferability');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::CheckDomainTransferabilityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::CheckDomainTransferability - Arguments for method CheckDomainTransferability on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckDomainTransferability on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method CheckDomainTransferability.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckDomainTransferability.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $CheckDomainTransferabilityResponse =
      $route53domains->CheckDomainTransferability(
      DomainName => 'MyDomainName',
      AuthCode   => 'MyDomainAuthCode',    # OPTIONAL
      );

    # Results:
    my $Transferability = $CheckDomainTransferabilityResponse->Transferability;

 # Returns a L<Paws::Route53Domains::CheckDomainTransferabilityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/CheckDomainTransferability>

=head1 ATTRIBUTES


=head2 AuthCode => Str

If the registrar for the top-level domain (TLD) requires an
authorization code to transfer the domain, the code that you got from
the current registrar for the domain.



=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want to transfer to Route 53. The
top-level domain (TLD), such as .com, must be a TLD that Route 53
supports. For a list of supported TLDs, see Domains that You Can
Register with Amazon Route 53
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html)
in the I<Amazon Route 53 Developer Guide>.

The domain name can contain only the following characters:

=over

=item *

Letters a through z. Domain names are not case sensitive.

=item *

Numbers 0 through 9.

=item *

Hyphen (-). You can't specify a hyphen at the beginning or end of a
label.

=item *

Period (.) to separate the labels in the name, such as the C<.> in
C<example.com>.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckDomainTransferability in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

