package Paws::S3::LoggingEnabled;
  use Moose;
  has TargetBucket => (is => 'ro', isa => 'Str', required => 1);
  has TargetGrants => (is => 'ro', isa => 'ArrayRef[Paws::S3::TargetGrant]', request_name => 'Grant', traits => ['NameInRequest']);
  has TargetPrefix => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::LoggingEnabled

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::LoggingEnabled object:

  $service_obj->Method(Att1 => { TargetBucket => $value, ..., TargetPrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::LoggingEnabled object:

  $result = $service_obj->Method(...);
  $result->Att1->TargetBucket

=head1 DESCRIPTION

Describes where logs are stored and the prefix that Amazon S3 assigns
to all log object keys for a bucket. For more information, see PUT
Bucket logging
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html)
in the I<Amazon Simple Storage Service API Reference>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetBucket => Str

  Specifies the bucket where you want Amazon S3 to store server access
logs. You can have your logs delivered to any bucket that you own,
including the same bucket that is being logged. You can also configure
multiple buckets to deliver their logs to the same target bucket. In
this case you should choose a different TargetPrefix for each source
bucket so that the delivered log files can be distinguished by key.


=head2 TargetGrants => ArrayRef[L<Paws::S3::TargetGrant>]

  


=head2 B<REQUIRED> TargetPrefix => Str

  A prefix for all log object keys. If you store log files from multiple
Amazon S3 buckets in a single bucket, you can use a prefix to
distinguish which log files came from which bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

