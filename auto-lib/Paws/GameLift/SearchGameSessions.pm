
package Paws::GameLift::SearchGameSessions;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str');
  has FilterExpression => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortExpression => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchGameSessions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::SearchGameSessionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::SearchGameSessions - Arguments for method SearchGameSessions on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchGameSessions on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method SearchGameSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchGameSessions.

As an example:

  $service_obj->SearchGameSessions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AliasId => Str

Unique identifier for a fleet alias. Each request must reference either
a fleet ID or alias ID, but not both.



=head2 FilterExpression => Str

String containing the search criteria for the session search. If no
filter expression is included, the request returns results for all game
sessions in the fleet that are in ACTIVE status.

A filter expression can contain one or multiple conditions. Each
condition consists of the following:

=over

=item * B<Operand> -- Name of a game session attribute. Valid values
are C<gameSessionName>, C<gameSessionId>, C<creationTimeMillis>,
C<playerSessionCount>, C<maximumSessions>,
C<hasAvailablePlayerSessions>.

=item * B<Comparator> -- Valid comparators are: C<=>, C<&lt;&gt;>,
C<&lt;>, C<&gt;>, C<&lt;=>, C<&gt;=>.

=item * B<Value> -- Value to be searched for. Values can be numbers,
boolean values (true/false) or strings. String values are case
sensitive, enclosed in single quotes. Special characters must be
escaped. Boolean and string values can only be used with the
comparators C<=> and C<&lt;&gt;>. For example, the following filter
expression searches on C<gameSessionName>: "C<FilterExpression":
"gameSessionName = 'Matt\\'s Awesome Game 1'">.

=back

To chain multiple conditions in a single expression, use the logical
keywords C<AND>, C<OR>, and C<NOT> and parentheses as needed. For
example: C<x AND y AND NOT z>, C<NOT (x OR y)>.

Session search evaluates conditions from left to right using the
following precedence rules:

=over

=item 1. C<=>, C<&lt;&gt;>, C<&lt;>, C<&gt;>, C<&lt;=>, C<&gt;=>

=item 2. Parentheses

=item 3. NOT

=item 4. AND

=item 5. OR

=back

For example, this filter expression retrieves game sessions hosting at
least ten players that have an open player slot:
C<"maximumSessions&gt;=10 AND hasAvailablePlayerSessions=true">.



=head2 FleetId => Str

Unique identifier for a fleet. Each request must reference either a
fleet ID or alias ID, but not both.



=head2 Limit => Int

Maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages. The maximum
number of results returned is 20, even if this value is not set or is
set higher than 20.



=head2 NextToken => Str

Token indicating the start of the next sequential page of results. Use
the token that is returned with a previous call to this action. To
specify the start of the result set, do not specify a value.



=head2 SortExpression => Str

Instructions on how to sort the search results. If no sort expression
is included, the request returns results in random order. A sort
expression consists of the following elements:

=over

=item * B<Operand> -- Name of a game session attribute. Valid values
are C<gameSessionName>, C<gameSessionId>, C<creationTimeMillis>,
C<playerSessionCount>, C<maximumSessions>,
C<hasAvailablePlayerSessions>.

=item * B<Order> -- Valid sort orders are C<ASC> (ascending) and
C<DESC> (descending).

=back

For example, this sort expression returns the oldest active sessions
first: C<"SortExpression": "creationTimeMillis ASC">. Results with a
null value for the sort operand are returned at the end of the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchGameSessions in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

