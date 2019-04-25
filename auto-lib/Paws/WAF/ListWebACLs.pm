
package Paws::WAF::ListWebACLs;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextMarker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWebACLs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::ListWebACLsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::ListWebACLs - Arguments for method ListWebACLs on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWebACLs on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method ListWebACLs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWebACLs.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To list Web ACLs
    # The following example returns an array of up to 100 web ACLs.
    my $ListWebACLsResponse = $waf->ListWebACLs(
      {
        'Limit' => 100
      }
    );

    # Results:
    my $WebACLs = $ListWebACLsResponse->WebACLs;

    # Returns a L<Paws::WAF::ListWebACLsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/ListWebACLs>

=head1 ATTRIBUTES


=head2 Limit => Int

Specifies the number of C<WebACL> objects that you want AWS WAF to
return for this request. If you have more C<WebACL> objects than the
number that you specify for C<Limit>, the response includes a
C<NextMarker> value that you can use to get another batch of C<WebACL>
objects.



=head2 NextMarker => Str

If you specify a value for C<Limit> and you have more C<WebACL> objects
than the number that you specify for C<Limit>, AWS WAF returns a
C<NextMarker> value in the response that allows you to list another
group of C<WebACL> objects. For the second and subsequent
C<ListWebACLs> requests, specify the value of C<NextMarker> from the
previous response to get information about another batch of C<WebACL>
objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWebACLs in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

