
package Paws::WAF::ListByteMatchSets;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextMarker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListByteMatchSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::ListByteMatchSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::ListByteMatchSets - Arguments for method ListByteMatchSets on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListByteMatchSets on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method ListByteMatchSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListByteMatchSets.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $ListByteMatchSetsResponse = $waf->ListByteMatchSets(
      Limit      => 1,                 # OPTIONAL
      NextMarker => 'MyNextMarker',    # OPTIONAL
    );

    # Results:
    my $ByteMatchSets = $ListByteMatchSetsResponse->ByteMatchSets;
    my $NextMarker    = $ListByteMatchSetsResponse->NextMarker;

    # Returns a L<Paws::WAF::ListByteMatchSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/ListByteMatchSets>

=head1 ATTRIBUTES


=head2 Limit => Int

Specifies the number of C<ByteMatchSet> objects that you want AWS WAF
to return for this request. If you have more C<ByteMatchSets> objects
than the number you specify for C<Limit>, the response includes a
C<NextMarker> value that you can use to get another batch of
C<ByteMatchSet> objects.



=head2 NextMarker => Str

If you specify a value for C<Limit> and you have more C<ByteMatchSets>
than the value of C<Limit>, AWS WAF returns a C<NextMarker> value in
the response that allows you to list another group of C<ByteMatchSets>.
For the second and subsequent C<ListByteMatchSets> requests, specify
the value of C<NextMarker> from the previous response to get
information about another batch of C<ByteMatchSets>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListByteMatchSets in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

