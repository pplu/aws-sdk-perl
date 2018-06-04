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

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[Str|Undef]

  A list of specific dimensions from a dimension group. If this parameter
is not present, then it signifies that all of the dimensions in the
group were requested, or are present in the response.

Valid values for elements in the C<Dimensions> array are:

=over

=item *

db.user.id

=item *

db.user.name

=item *

db.host.id

=item *

db.host.name

=item *

db.sql.id

=item *

db.sql.db_id

=item *

db.sql.statement

=item *

db.sql.tokenized_id

=item *

db.sql_tokenized.id

=item *

db.sql_tokenized.db_id

=item *

db.sql_tokenized.statement

=item *

db.wait_event.name

=item *

db.wait_event.type

=item *

db.wait_event_type.name

=back



=head2 B<REQUIRED> Group => Str

  The name of the dimension group. Valid values are:

=over

=item *

C<db.user>

=item *

C<db.host>

=item *

C<db.sql>

=item *

C<db.sql_tokenized>

=item *

C<db.wait_event>

=item *

C<db.wait_event_type>

=back



=head2 Limit => Int

  The maximum number of items to fetch for this dimension group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

