# Generated by default/object.tt
package Paws::PerformanceInsights::DimensionGroup;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Group => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::DimensionGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PerformanceInsights::DimensionGroup object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Limit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PerformanceInsights::DimensionGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

A logical grouping of Performance Insights metrics for a related
subject area. For example, the C<db.sql> dimension group consists of
the following dimensions: C<db.sql.id>, C<db.sql.db_id>,
C<db.sql.statement>, and C<db.sql.tokenized_id>.

Each response element returns a maximum of 500 bytes. For larger
elements, such as SQL statements, only the first 500 bytes are
returned.

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[Str|Undef]

A list of specific dimensions from a dimension group. If this parameter
is not present, then it signifies that all of the dimensions in the
group were requested, or are present in the response.

Valid values for elements in the C<Dimensions> array are:

=over

=item *

C<db.application.name> - The name of the application that is connected
to the database (only Aurora PostgreSQL and RDS PostgreSQL)

=item *

C<db.host.id> - The host ID of the connected client (all engines)

=item *

C<db.host.name> - The host name of the connected client (all engines)

=item *

C<db.name> - The name of the database to which the client is connected
(only Aurora PostgreSQL, RDS PostgreSQL, Aurora MySQL, RDS MySQL, and
MariaDB)

=item *

C<db.session_type.name> - The type of the current session (only Aurora
PostgreSQL and RDS PostgreSQL)

=item *

C<db.sql.id> - The SQL ID generated by Performance Insights (all
engines)

=item *

C<db.sql.db_id> - The SQL ID generated by the database (all engines)

=item *

C<db.sql.statement> - The SQL text that is being executed (all engines)

=item *

C<db.sql.tokenized_id>

=item *

C<db.sql_tokenized.id> - The SQL digest ID generated by Performance
Insights (all engines)

=item *

C<db.sql_tokenized.db_id> - SQL digest ID generated by the database
(all engines)

=item *

C<db.sql_tokenized.statement> - The SQL digest text (all engines)

=item *

C<db.user.id> - The ID of the user logged in to the database (all
engines)

=item *

C<db.user.name> - The name of the user logged in to the database (all
engines)

=item *

C<db.wait_event.name> - The event for which the backend is waiting (all
engines)

=item *

C<db.wait_event.type> - The type of event for which the backend is
waiting (all engines)

=item *

C<db.wait_event_type.name> - The name of the event type for which the
backend is waiting (all engines)

=back



=head2 B<REQUIRED> Group => Str

The name of the dimension group. Valid values are:

=over

=item *

C<db> - The name of the database to which the client is connected (only
Aurora PostgreSQL, RDS PostgreSQL, Aurora MySQL, RDS MySQL, and
MariaDB)

=item *

C<db.application> - The name of the application that is connected to
the database (only Aurora PostgreSQL and RDS PostgreSQL)

=item *

C<db.host> - The host name of the connected client (all engines)

=item *

C<db.session_type> - The type of the current session (only Aurora
PostgreSQL and RDS PostgreSQL)

=item *

C<db.sql> - The SQL that is currently executing (all engines)

=item *

C<db.sql_tokenized> - The SQL digest (all engines)

=item *

C<db.wait_event> - The event for which the database backend is waiting
(all engines)

=item *

C<db.wait_event_type> - The type of event for which the database
backend is waiting (all engines)

=item *

C<db.user> - The user logged in to the database (all engines)

=back



=head2 Limit => Int

The maximum number of items to fetch for this dimension group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

