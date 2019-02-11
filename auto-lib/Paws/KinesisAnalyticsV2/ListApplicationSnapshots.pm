
package Paws::KinesisAnalyticsV2::ListApplicationSnapshots;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::ListApplicationSnapshotsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ListApplicationSnapshots - Arguments for method ListApplicationSnapshots on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationSnapshots on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method ListApplicationSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationSnapshots.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $ListApplicationSnapshotsResponse =
      $kinesisanalytics->ListApplicationSnapshots(
      ApplicationName => 'MyApplicationName',
      Limit           => 1,                     # OPTIONAL
      NextToken       => 'MyNextToken',         # OPTIONAL
      );

    # Results:
    my $NextToken = $ListApplicationSnapshotsResponse->NextToken;
    my $SnapshotSummaries =
      $ListApplicationSnapshotsResponse->SnapshotSummaries;

# Returns a L<Paws::KinesisAnalyticsV2::ListApplicationSnapshotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/ListApplicationSnapshots>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an existing application.



=head2 Limit => Int

The maximum number of application snapshots to list.



=head2 NextToken => Str

Use this parameter if you receive a C<NextToken> response in a previous
request that indicates that there is more output available. Set it to
the value of the previous call's C<NextToken> response to indicate
where the output should continue from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationSnapshots in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

