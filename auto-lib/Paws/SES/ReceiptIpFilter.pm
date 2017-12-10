package Paws::SES::ReceiptIpFilter;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ReceiptIpFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::ReceiptIpFilter object:

  $service_obj->Method(Att1 => { Cidr => $value, ..., Policy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::ReceiptIpFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidr

=head1 DESCRIPTION

A receipt IP address filter enables you to specify whether to accept or
reject mail originating from an IP address or range of IP addresses.

For information about setting up IP address filters, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cidr => Str

  A single IP address or a range of IP addresses that you want to block
or allow, specified in Classless Inter-Domain Routing (CIDR) notation.
An example of a single email address is 10.0.0.1. An example of a range
of IP addresses is 10.0.0.1/24. For more information about CIDR
notation, see RFC 2317 (https://tools.ietf.org/html/rfc2317).


=head2 B<REQUIRED> Policy => Str

  Indicates whether to block or allow incoming mail from the specified IP
addresses.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

