
package Paws::RedShift::UsageLimit;
  use Moose;
  has Amount => (is => 'ro', isa => 'Int');
  has BreachAction => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has FeatureType => (is => 'ro', isa => 'Str');
  has LimitType => (is => 'ro', isa => 'Str');
  has Period => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]', request_name => 'Tag', traits => ['NameInRequest',]);
  has UsageLimitId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::UsageLimit

=head1 ATTRIBUTES


=head2 Amount => Int

The limit amount. If time-based, this amount is in minutes. If
data-based, this amount is in terabytes (TB).


=head2 BreachAction => Str

The action that Amazon Redshift takes when the limit is reached.
Possible values are:

=over

=item *

B<log> - To log an event in a system table. The default is log.

=item *

B<emit-metric> - To emit CloudWatch metrics.

=item *

B<disable> - To disable the feature until the next usage period begins.

=back


Valid values are: C<"log">, C<"emit-metric">, C<"disable">
=head2 ClusterIdentifier => Str

The identifier of the cluster with a usage limit.


=head2 FeatureType => Str

The Amazon Redshift feature to which the limit applies.

Valid values are: C<"spectrum">, C<"concurrency-scaling">
=head2 LimitType => Str

The type of limit. Depending on the feature type, this can be based on
a time duration or data size.

Valid values are: C<"time">, C<"data-scanned">
=head2 Period => Str

The time period that the amount applies to. A C<weekly> period begins
on Sunday. The default is C<monthly>.

Valid values are: C<"daily">, C<"weekly">, C<"monthly">
=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

A list of tag instances.


=head2 UsageLimitId => Str

The identifier of the usage limit.


=head2 _request_id => Str


=cut

