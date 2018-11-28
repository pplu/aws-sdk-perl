
package Paws::KinesisAnalyticsV2::StartApplication;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has RunConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::RunConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::StartApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::StartApplication - Arguments for method StartApplication on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartApplication on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method StartApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartApplication.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $StartApplicationResponse = $kinesisanalytics->StartApplication(
      ApplicationName  => 'MyApplicationName',
      RunConfiguration => {
        ApplicationRestoreConfiguration => {
          ApplicationRestoreType => 'SKIP_RESTORE_FROM_SNAPSHOT'
          , # values: SKIP_RESTORE_FROM_SNAPSHOT, RESTORE_FROM_LATEST_SNAPSHOT, RESTORE_FROM_CUSTOM_SNAPSHOT
          SnapshotName => 'MySnapshotName',    # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        SqlRunConfigurations => [
          {
            InputId                            => 'MyId',    # min: 1, max: 50
            InputStartingPositionConfiguration => {
              InputStartingPosition =>
                'NOW', # values: NOW, TRIM_HORIZON, LAST_STOPPED_POINT; OPTIONAL
            },

          },
          ...
        ],             # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/StartApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application.



=head2 B<REQUIRED> RunConfiguration => L<Paws::KinesisAnalyticsV2::RunConfiguration>

Identifies the run configuration (start parameters) of a Kinesis Data
Analytics application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartApplication in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

