package Paws::SSM::LoggingInfo;
  use Moose;
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has S3Region => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::LoggingInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::LoggingInfo object:

  $service_obj->Method(Att1 => { S3BucketName => $value, ..., S3Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::LoggingInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->S3BucketName

=head1 DESCRIPTION

Information about an Amazon S3 bucket to write instance-level logs to.

C<LoggingInfo> has been deprecated. To specify an S3 bucket to contain
logs, instead use the C<OutputS3BucketName> and C<OutputS3KeyPrefix>
options in the C<TaskInvocationParameters> structure. For information
about how Systems Manager handles these options for the supported
Maintenance Window task types, see
MaintenanceWindowTaskInvocationParameters.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3BucketName => Str

  The name of an Amazon S3 bucket where execution logs are stored .


=head2 S3KeyPrefix => Str

  (Optional) The Amazon S3 bucket subfolder.


=head2 B<REQUIRED> S3Region => Str

  The region where the Amazon S3 bucket is located.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

