package Paws::GlobalAccelerator::AcceleratorAttributes;
  use Moose;
  has FlowLogsEnabled => (is => 'ro', isa => 'Bool');
  has FlowLogsS3Bucket => (is => 'ro', isa => 'Str');
  has FlowLogsS3Prefix => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::AcceleratorAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlobalAccelerator::AcceleratorAttributes object:

  $service_obj->Method(Att1 => { FlowLogsEnabled => $value, ..., FlowLogsS3Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlobalAccelerator::AcceleratorAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->FlowLogsEnabled

=head1 DESCRIPTION

Attributes of an accelerator.

=head1 ATTRIBUTES


=head2 FlowLogsEnabled => Bool

  Indicates whether flow logs are enabled. The default value is false. If
the value is true, C<FlowLogsS3Bucket> and C<FlowLogsS3Prefix> must be
specified.

For more information, see Flow Logs
(https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html)
in the I<AWS Global Accelerator Developer Guide>.


=head2 FlowLogsS3Bucket => Str

  The name of the Amazon S3 bucket for the flow logs. Attribute is
required if C<FlowLogsEnabled> is C<true>. The bucket must exist and
have a bucket policy that grants AWS Global Accelerator permission to
write to the bucket.


=head2 FlowLogsS3Prefix => Str

  The prefix for the location in the Amazon S3 bucket for the flow logs.
Attribute is required if C<FlowLogsEnabled> is C<true>. If you
donE<rsquo>t specify a prefix, the flow logs are stored in the root of
the bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

