
package Paws::WAFRegional::GetSqlInjectionMatchSet;
  use Moose;
  has SqlInjectionMatchSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSqlInjectionMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::GetSqlInjectionMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetSqlInjectionMatchSet - Arguments for method GetSqlInjectionMatchSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSqlInjectionMatchSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method GetSqlInjectionMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSqlInjectionMatchSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
   # To get a SQL injection match set
   # The following example returns the details of a SQL injection match set with
   # the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $GetSqlInjectionMatchSetResponse =
      $waf -regional->GetSqlInjectionMatchSet(
      {
        'SqlInjectionMatchSetId' => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5'
      }
      );

    # Results:
    my $SqlInjectionMatchSet =
      $GetSqlInjectionMatchSetResponse->SqlInjectionMatchSet;

    # Returns a L<Paws::WAFRegional::GetSqlInjectionMatchSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/GetSqlInjectionMatchSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SqlInjectionMatchSetId => Str

The C<SqlInjectionMatchSetId> of the SqlInjectionMatchSet that you want
to get. C<SqlInjectionMatchSetId> is returned by
CreateSqlInjectionMatchSet and by ListSqlInjectionMatchSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSqlInjectionMatchSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

