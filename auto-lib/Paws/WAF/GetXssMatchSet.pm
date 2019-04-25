
package Paws::WAF::GetXssMatchSet;
  use Moose;
  has XssMatchSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetXssMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::GetXssMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetXssMatchSet - Arguments for method GetXssMatchSet on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetXssMatchSet on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method GetXssMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetXssMatchSet.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To get an XSS match set
    # The following example returns the details of an XSS match set with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $GetXssMatchSetResponse = $waf->GetXssMatchSet(
      {
        'XssMatchSetId' => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5'
      }
    );

    # Results:
    my $XssMatchSet = $GetXssMatchSetResponse->XssMatchSet;

    # Returns a L<Paws::WAF::GetXssMatchSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/GetXssMatchSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> XssMatchSetId => Str

The C<XssMatchSetId> of the XssMatchSet that you want to get.
C<XssMatchSetId> is returned by CreateXssMatchSet and by
ListXssMatchSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetXssMatchSet in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

