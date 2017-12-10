package Paws::ACM::DomainValidationOption;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ValidationDomain => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::DomainValidationOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACM::DomainValidationOption object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., ValidationDomain => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACM::DomainValidationOption object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

Contains information about the domain names that you want ACM to use to
send you emails that enable you to validate domain ownership.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

  A fully qualified domain name (FQDN) in the certificate request.


=head2 B<REQUIRED> ValidationDomain => Str

  The domain name that you want ACM to use to send you validation emails.
This domain name is the suffix of the email addresses that you want ACM
to use. This must be the same as the C<DomainName> value or a
superdomain of the C<DomainName> value. For example, if you request a
certificate for C<testing.example.com>, you can specify C<example.com>
for this value. In that case, ACM sends domain validation emails to the
following five addresses:

=over

=item *

admin@example.com

=item *

administrator@example.com

=item *

hostmaster@example.com

=item *

postmaster@example.com

=item *

webmaster@example.com

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

