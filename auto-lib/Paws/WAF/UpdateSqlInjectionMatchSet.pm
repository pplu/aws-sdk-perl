
package Paws::WAF::UpdateSqlInjectionMatchSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has SqlInjectionMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAF::SqlInjectionMatchSetUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSqlInjectionMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::UpdateSqlInjectionMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::UpdateSqlInjectionMatchSet - Arguments for method UpdateSqlInjectionMatchSet on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSqlInjectionMatchSet on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method UpdateSqlInjectionMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSqlInjectionMatchSet.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To update a SQL injection match set
    # The following example deletes a SqlInjectionMatchTuple object (filters) in
    # a SQL injection match set with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $UpdateSqlInjectionMatchSetResponse = $waf->UpdateSqlInjectionMatchSet(
      {
        'ChangeToken'            => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
        'SqlInjectionMatchSetId' => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5',
        'Updates'                => [

          {
            'Action'                 => 'DELETE',
            'SqlInjectionMatchTuple' => {
              'FieldToMatch' => {
                'Type' => 'QUERY_STRING'
              },
              'TextTransformation' => 'URL_DECODE'
            }
          }
        ]
      }
    );

    # Results:
    my $ChangeToken = $UpdateSqlInjectionMatchSetResponse->ChangeToken;

    # Returns a L<Paws::WAF::UpdateSqlInjectionMatchSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/UpdateSqlInjectionMatchSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> SqlInjectionMatchSetId => Str

The C<SqlInjectionMatchSetId> of the C<SqlInjectionMatchSet> that you
want to update. C<SqlInjectionMatchSetId> is returned by
CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAF::SqlInjectionMatchSetUpdate>]

An array of C<SqlInjectionMatchSetUpdate> objects that you want to
insert into or delete from a SqlInjectionMatchSet. For more
information, see the applicable data types:

=over

=item *

SqlInjectionMatchSetUpdate: Contains C<Action> and
C<SqlInjectionMatchTuple>

=item *

SqlInjectionMatchTuple: Contains C<FieldToMatch> and
C<TextTransformation>

=item *

FieldToMatch: Contains C<Data> and C<Type>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSqlInjectionMatchSet in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

