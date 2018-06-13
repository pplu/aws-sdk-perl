
package Paws::WAF::DeleteXssMatchSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has XssMatchSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteXssMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::DeleteXssMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::DeleteXssMatchSet - Arguments for method DeleteXssMatchSet on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteXssMatchSet on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method DeleteXssMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteXssMatchSet.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To delete an XSS match set
    # The following example deletes an XSS match set with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $DeleteXssMatchSetResponse = $waf->DeleteXssMatchSet(
      {
        'ChangeToken'   => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
        'XssMatchSetId' => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5'
      }
    );

    # Results:
    my $ChangeToken = $DeleteXssMatchSetResponse->ChangeToken;

    # Returns a L<Paws::WAF::DeleteXssMatchSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/DeleteXssMatchSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> XssMatchSetId => Str

The C<XssMatchSetId> of the XssMatchSet that you want to delete.
C<XssMatchSetId> is returned by CreateXssMatchSet and by
ListXssMatchSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteXssMatchSet in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

