package Paws::WAF::IPSet;
  use Moose;
  has IPSetDescriptors => (is => 'ro', isa => 'ArrayRef[Paws::WAF::IPSetDescriptor]', required => 1);
  has IPSetId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::IPSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::IPSet object:

  $service_obj->Method(Att1 => { IPSetDescriptors => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::IPSet object:

  $result = $service_obj->Method(...);
  $result->Att1->IPSetDescriptors

=head1 DESCRIPTION

Contains one or more IP addresses or blocks of IP addresses specified
in Classless Inter-Domain Routing (CIDR) notation. To specify an
individual IP address, you specify the four-part IP address followed by
a C</32>, for example, 192.0.2.0/31. To block a range of IP addresses,
you can specify a C</24>, a C</16>, or a C</8> CIDR. For more
information about CIDR notation, perform an Internet search on C<cidr
notation>.

=head1 ATTRIBUTES

=head2 B<REQUIRED> IPSetDescriptors => ArrayRef[L<Paws::WAF::IPSetDescriptor>]

  The IP address type (C<IPV4>) and the IP address range (in CIDR
notation) that web requests originate from. If the C<WebACL> is
associated with a CloudFront distribution, this is the value of one of
the following fields in CloudFront access logs:

=over

=item * C<c-ip>, if the viewer did not use an HTTP proxy or a load
balancer to send the request

=item * C<x-forwarded-for>, if the viewer did use an HTTP proxy or a
load balancer to send the request

=back


=head2 B<REQUIRED> IPSetId => Str

  The C<IPSetId> for an C<IPSet>. You use C<IPSetId> to get information
about an C<IPSet> (see GetIPSet), update an C<IPSet> (see UpdateIPSet),
insert an C<IPSet> into a C<Rule> or delete one from a C<Rule> (see
UpdateRule), and delete an C<IPSet> from AWS WAF (see DeleteIPSet).

C<IPSetId> is returned by CreateIPSet and by ListIPSets.

=head2 Name => Str

  A friendly name or description of the IPSet. You can't change the name
of an C<IPSet> after you create it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

