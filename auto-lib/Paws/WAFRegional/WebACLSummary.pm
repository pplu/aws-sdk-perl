package Paws::WAFRegional::WebACLSummary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::WebACLSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::WebACLSummary object:

  $service_obj->Method(Att1 => { Name => $value, ..., WebACLId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::WebACLSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Contains the identifier and the name or description of the WebACL.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  A friendly name or description of the WebACL. You can't change the name
of a C<WebACL> after you create it.


=head2 B<REQUIRED> WebACLId => Str

  A unique identifier for a C<WebACL>. You use C<WebACLId> to get
information about a C<WebACL> (see GetWebACL), update a C<WebACL> (see
UpdateWebACL), and delete a C<WebACL> from AWS WAF (see DeleteWebACL).

C<WebACLId> is returned by CreateWebACL and by ListWebACLs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

