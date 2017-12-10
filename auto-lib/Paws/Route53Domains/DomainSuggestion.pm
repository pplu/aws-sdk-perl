package Paws::Route53Domains::DomainSuggestion;
  use Moose;
  has Availability => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::DomainSuggestion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Domains::DomainSuggestion object:

  $service_obj->Method(Att1 => { Availability => $value, ..., DomainName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Domains::DomainSuggestion object:

  $result = $service_obj->Method(...);
  $result->Att1->Availability

=head1 DESCRIPTION

Information about one suggested domain name.

=head1 ATTRIBUTES


=head2 Availability => Str

  Whether the domain name is available for registering.

You can register only the domains that are designated as C<AVAILABLE>.

Valid values:

=over

=item AVAILABLE

The domain name is available.

=item AVAILABLE_RESERVED

The domain name is reserved under specific conditions.

=item AVAILABLE_PREORDER

The domain name is available and can be preordered.

=item DONT_KNOW

The TLD registry didn't reply with a definitive answer about whether
the domain name is available. Amazon Route 53 can return this response
for a variety of reasons, for example, the registry is performing
maintenance. Try again later.

=item PENDING

The TLD registry didn't return a response in the expected amount of
time. When the response is delayed, it usually takes just a few extra
seconds. You can resubmit the request immediately.

=item RESERVED

The domain name has been reserved for another person or organization.

=item UNAVAILABLE

The domain name is not available.

=item UNAVAILABLE_PREMIUM

The domain name is not available.

=item UNAVAILABLE_RESTRICTED

The domain name is forbidden.

=back



=head2 DomainName => Str

  A suggested domain name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

