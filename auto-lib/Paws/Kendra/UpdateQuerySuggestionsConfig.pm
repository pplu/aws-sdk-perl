
package Paws::Kendra::UpdateQuerySuggestionsConfig;
  use Moose;
  has IncludeQueriesWithoutUserInformation => (is => 'ro', isa => 'Bool');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has MinimumNumberOfQueryingUsers => (is => 'ro', isa => 'Int');
  has MinimumQueryCount => (is => 'ro', isa => 'Int');
  has Mode => (is => 'ro', isa => 'Str');
  has QueryLogLookBackWindowInDays => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQuerySuggestionsConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::UpdateQuerySuggestionsConfig - Arguments for method UpdateQuerySuggestionsConfig on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQuerySuggestionsConfig on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method UpdateQuerySuggestionsConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQuerySuggestionsConfig.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->UpdateQuerySuggestionsConfig(
      IndexId                              => 'MyIndexId',
      IncludeQueriesWithoutUserInformation => 1,             # OPTIONAL
      MinimumNumberOfQueryingUsers         => 1,             # OPTIONAL
      MinimumQueryCount                    => 1,             # OPTIONAL
      Mode                                 => 'ENABLED',     # OPTIONAL
      QueryLogLookBackWindowInDays         => 1,             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/UpdateQuerySuggestionsConfig>

=head1 ATTRIBUTES


=head2 IncludeQueriesWithoutUserInformation => Bool

C<TRUE> to include queries without user information (i.e. all queries,
irrespective of the user), otherwise C<FALSE> to only include queries
with user information.

If you pass user information to Amazon Kendra along with the queries,
you can set this flag to C<FALSE> and instruct Amazon Kendra to only
consider queries with user information.

If you set to C<FALSE>, Amazon Kendra only considers queries searched
at least C<MinimumQueryCount> times across
C<MinimumNumberOfQueryingUsers> unique users for suggestions.

If you set to C<TRUE>, Amazon Kendra ignores all user information and
learns from all queries.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index you want to update query suggestions
settings for.



=head2 MinimumNumberOfQueryingUsers => Int

The minimum number of unique users who must search a query in order for
the query to be eligible to suggest to your users.

Increasing this number might decrease the number of suggestions.
However, this ensures a query is searched by many users and is truly
popular to suggest to users.

How you tune this setting depends on your specific needs.



=head2 MinimumQueryCount => Int

The the minimum number of times a query must be searched in order to be
eligible to suggest to your users.

Decreasing this number increases the number of suggestions. However,
this affects the quality of suggestions as it sets a low bar for a
query to be considered popular to suggest to users.

How you tune this setting depends on your specific needs.



=head2 Mode => Str

Set the mode to C<ENABLED> or C<LEARN_ONLY>.

By default, Amazon Kendra enables query suggestions. C<LEARN_ONLY> mode
allows you to turn off query suggestions. You can to update this at any
time.

In C<LEARN_ONLY> mode, Amazon Kendra continues to learn from new
queries to keep suggestions up to date for when you are ready to switch
to ENABLED mode again.

Valid values are: C<"ENABLED">, C<"LEARN_ONLY">

=head2 QueryLogLookBackWindowInDays => Int

How recent your queries are in your query log time window.

The time window is the number of days from current day to past days.

By default, Amazon Kendra sets this to 180.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQuerySuggestionsConfig in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

