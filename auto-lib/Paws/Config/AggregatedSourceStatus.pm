package Paws::Config::AggregatedSourceStatus;
  use Moose;
  has AwsRegion => (is => 'ro', isa => 'Str');
  has LastErrorCode => (is => 'ro', isa => 'Str');
  has LastErrorMessage => (is => 'ro', isa => 'Str');
  has LastUpdateStatus => (is => 'ro', isa => 'Str');
  has LastUpdateTime => (is => 'ro', isa => 'Str');
  has SourceId => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::AggregatedSourceStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::AggregatedSourceStatus object:

  $service_obj->Method(Att1 => { AwsRegion => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::AggregatedSourceStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsRegion

=head1 DESCRIPTION

The current sync status between the source and the aggregator account.

=head1 ATTRIBUTES


=head2 AwsRegion => Str

  The region authorized to collect aggregated data.


=head2 LastErrorCode => Str

  The error code that AWS Config returned when the source account
aggregation last failed.


=head2 LastErrorMessage => Str

  The message indicating that the source account aggregation failed due
to an error.


=head2 LastUpdateStatus => Str

  Filters the last updated status type.

=over

=item *

Valid value FAILED indicates errors while moving data.

=item *

Valid value SUCCEEDED indicates the data was successfully moved.

=item *

Valid value OUTDATED indicates the data is not the most recent.

=back



=head2 LastUpdateTime => Str

  The time of the last update.


=head2 SourceId => Str

  The source account ID or an organization.


=head2 SourceType => Str

  The source account or an organization.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

