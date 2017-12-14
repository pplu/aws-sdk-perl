package Paws::SES::ReceiptFilter;
  use Moose;
  has IpFilter => (is => 'ro', isa => 'Paws::SES::ReceiptIpFilter', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ReceiptFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::ReceiptFilter object:

  $service_obj->Method(Att1 => { IpFilter => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::ReceiptFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->IpFilter

=head1 DESCRIPTION

A receipt IP address filter enables you to specify whether to accept or
reject mail originating from an IP address or range of IP addresses.

For information about setting up IP address filters, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpFilter => L<Paws::SES::ReceiptIpFilter>

  A structure that provides the IP addresses to block or allow, and
whether to block or allow incoming mail from them.


=head2 B<REQUIRED> Name => Str

  The name of the IP address filter. The name must:

=over

=item *

This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
underscores (_), or dashes (-).

=item *

Start and end with a letter or number.

=item *

Contain less than 64 characters.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

