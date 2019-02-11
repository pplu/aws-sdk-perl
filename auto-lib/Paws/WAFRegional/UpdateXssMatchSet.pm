
package Paws::WAFRegional::UpdateXssMatchSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::XssMatchSetUpdate]', required => 1);
  has XssMatchSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateXssMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::UpdateXssMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::UpdateXssMatchSet - Arguments for method UpdateXssMatchSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateXssMatchSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method UpdateXssMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateXssMatchSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    # To update an XSS match set
    # The following example deletes an XssMatchTuple object (filters) in an
    # XssMatchSet with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $UpdateXssMatchSetResponse = $waf -regional->UpdateXssMatchSet(
      {
        'ChangeToken' => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
        'Updates'     => [

          {
            'Action'        => 'DELETE',
            'XssMatchTuple' => {
              'FieldToMatch' => {
                'Type' => 'QUERY_STRING'
              },
              'TextTransformation' => 'URL_DECODE'
            }
          }
        ],
        'XssMatchSetId' => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5'
      }
    );

    # Results:
    my $ChangeToken = $UpdateXssMatchSetResponse->ChangeToken;

    # Returns a L<Paws::WAFRegional::UpdateXssMatchSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/UpdateXssMatchSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAFRegional::XssMatchSetUpdate>]

An array of C<XssMatchSetUpdate> objects that you want to insert into
or delete from an XssMatchSet. For more information, see the applicable
data types:

=over

=item *

XssMatchSetUpdate: Contains C<Action> and C<XssMatchTuple>

=item *

XssMatchTuple: Contains C<FieldToMatch> and C<TextTransformation>

=item *

FieldToMatch: Contains C<Data> and C<Type>

=back




=head2 B<REQUIRED> XssMatchSetId => Str

The C<XssMatchSetId> of the C<XssMatchSet> that you want to update.
C<XssMatchSetId> is returned by CreateXssMatchSet and by
ListXssMatchSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateXssMatchSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

