
package Paws::WAFRegional::DeleteWebACL;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWebACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::DeleteWebACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::DeleteWebACL - Arguments for method DeleteWebACL on Paws::WAFRegional

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWebACL on the 
AWS WAF Regional service. Use the attributes of this class
as arguments to method DeleteWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWebACL.

As an example:

  $service_obj->DeleteWebACL(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> WebACLId => Str

The C<WebACLId> of the WebACL that you want to delete. C<WebACLId> is
returned by CreateWebACL and by ListWebACLs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWebACL in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

