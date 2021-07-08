
package Paws::Kendra::DescribeQuerySuggestionsConfigResponse;
  use Moose;
  has IncludeQueriesWithoutUserInformation => (is => 'ro', isa => 'Bool');
  has LastClearTime => (is => 'ro', isa => 'Str');
  has LastSuggestionsBuildTime => (is => 'ro', isa => 'Str');
  has MinimumNumberOfQueryingUsers => (is => 'ro', isa => 'Int');
  has MinimumQueryCount => (is => 'ro', isa => 'Int');
  has Mode => (is => 'ro', isa => 'Str');
  has QueryLogLookBackWindowInDays => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has TotalSuggestionsCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeQuerySuggestionsConfigResponse

=head1 ATTRIBUTES


=head2 IncludeQueriesWithoutUserInformation => Bool

Shows whether Amazon Kendra uses all queries or only uses queries that
include user information to generate query suggestions.


=head2 LastClearTime => Str

Shows the date-time query suggestions for an index was last cleared.

After you clear suggestions, Amazon Kendra learns new suggestions based
on new queries added to the query log from the time you cleared
suggestions. Amazon Kendra only considers re-occurences of a query from
the time you cleared suggestions.


=head2 LastSuggestionsBuildTime => Str

Shows the date-time query suggestions for an index was last updated.


=head2 MinimumNumberOfQueryingUsers => Int

Shows the minimum number of unique users who must search a query in
order for the query to be eligible to suggest to your users.


=head2 MinimumQueryCount => Int

Shows the minimum number of times a query must be searched in order for
the query to be eligible to suggest to your users.


=head2 Mode => Str

Shows whether query suggestions are currently in C<ENABLED> mode or
C<LEARN_ONLY> mode.

By default, Amazon Kendra enables query suggestions.C<LEARN_ONLY> turns
off query suggestions for your users. You can change the mode using the
UpdateQuerySuggestionsConfig
(https://docs.aws.amazon.com/kendra/latest/dg/API_UpdateQuerySuggestionsConfig.html)
operation.

Valid values are: C<"ENABLED">, C<"LEARN_ONLY">
=head2 QueryLogLookBackWindowInDays => Int

Shows how recent your queries are in your query log time window (in
days).


=head2 Status => Str

Shows whether the status of query suggestions settings is currently
Active or Updating.

Active means the current settings apply and Updating means your changed
settings are in the process of applying.

Valid values are: C<"ACTIVE">, C<"UPDATING">
=head2 TotalSuggestionsCount => Int

Shows the current total count of query suggestions for an index.

This count can change when you update your query suggestions settings,
if you filter out certain queries from suggestions using a block list,
and as the query log accumulates more queries for Amazon Kendra to
learn from.


=head2 _request_id => Str


=cut

1;