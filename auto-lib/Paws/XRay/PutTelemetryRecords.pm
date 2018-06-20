
package Paws::XRay::PutTelemetryRecords;
  use Moose;
  has EC2InstanceId => (is => 'ro', isa => 'Str');
  has Hostname => (is => 'ro', isa => 'Str');
  has ResourceARN => (is => 'ro', isa => 'Str');
  has TelemetryRecords => (is => 'ro', isa => 'ArrayRef[Paws::XRay::TelemetryRecord]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutTelemetryRecords');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/TelemetryRecords');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::PutTelemetryRecordsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::PutTelemetryRecords - Arguments for method PutTelemetryRecords on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutTelemetryRecords on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method PutTelemetryRecords.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutTelemetryRecords.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $PutTelemetryRecordsResult = $xray->PutTelemetryRecords(
      TelemetryRecords => [
        {
          Timestamp               => '1970-01-01T01:00:00',
          BackendConnectionErrors => {
            ConnectionRefusedCount => 1,    # OPTIONAL
            HTTPCode4XXCount       => 1,    # OPTIONAL
            HTTPCode5XXCount       => 1,    # OPTIONAL
            OtherCount             => 1,    # OPTIONAL
            TimeoutCount           => 1,    # OPTIONAL
            UnknownHostCount       => 1,    # OPTIONAL
          },    # OPTIONAL
          SegmentsReceivedCount  => 1,    # OPTIONAL
          SegmentsRejectedCount  => 1,    # OPTIONAL
          SegmentsSentCount      => 1,    # OPTIONAL
          SegmentsSpilloverCount => 1,    # OPTIONAL
        },
        ...
      ],
      EC2InstanceId => 'MyEC2InstanceId',    # OPTIONAL
      Hostname      => 'MyHostname',         # OPTIONAL
      ResourceARN   => 'MyResourceARN',      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/PutTelemetryRecords>

=head1 ATTRIBUTES


=head2 EC2InstanceId => Str





=head2 Hostname => Str





=head2 ResourceARN => Str





=head2 B<REQUIRED> TelemetryRecords => ArrayRef[L<Paws::XRay::TelemetryRecord>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutTelemetryRecords in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

