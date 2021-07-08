
package Paws::IoT::DescribeCustomMetricResponse;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');
  has MetricArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricArn');
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName');
  has MetricType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricType');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeCustomMetricResponse

=head1 ATTRIBUTES


=head2 CreationDate => Str

The creation date of the custom metric in milliseconds since epoch.


=head2 DisplayName => Str

Field represents a friendly name in the console for the custom metric;
doesn't have to be unique. Don't use this name as the metric identifier
in the device metric report. Can be updated.


=head2 LastModifiedDate => Str

The time the custom metric was last modified in milliseconds since
epoch.


=head2 MetricArn => Str

The Amazon Resource Number (ARN) of the custom metric.


=head2 MetricName => Str

The name of the custom metric.


=head2 MetricType => Str

The type of the custom metric. Types include C<string-list>,
C<ip-address-list>, C<number-list>, and C<number>.

Valid values are: C<"string-list">, C<"ip-address-list">, C<"number-list">, C<"number">
=head2 _request_id => Str


=cut

