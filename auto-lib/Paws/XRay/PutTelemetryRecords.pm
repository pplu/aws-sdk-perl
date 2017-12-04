
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
AWS X-Ray service. Use the attributes of this class
as arguments to method PutTelemetryRecords.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutTelemetryRecords.

As an example:

  $service_obj->PutTelemetryRecords(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

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

