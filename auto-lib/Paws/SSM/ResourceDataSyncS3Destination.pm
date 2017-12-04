package Paws::SSM::ResourceDataSyncS3Destination;
  use Moose;
  has AWSKMSKeyARN => (is => 'ro', isa => 'Str');
  has BucketName => (is => 'ro', isa => 'Str', required => 1);
  has Prefix => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str', required => 1);
  has SyncFormat => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ResourceDataSyncS3Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ResourceDataSyncS3Destination object:

  $service_obj->Method(Att1 => { AWSKMSKeyARN => $value, ..., SyncFormat => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ResourceDataSyncS3Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->AWSKMSKeyARN

=head1 DESCRIPTION

Information about the target Amazon S3 bucket for the Resource Data
Sync.

=head1 ATTRIBUTES


=head2 AWSKMSKeyARN => Str

  The ARN of an encryption key for a destination in Amazon S3. Must
belong to the same region as the destination Amazon S3 bucket.


=head2 B<REQUIRED> BucketName => Str

  The name of the Amazon S3 bucket where the aggregated data is stored.


=head2 Prefix => Str

  An Amazon S3 prefix for the bucket.


=head2 B<REQUIRED> Region => Str

  The AWS Region with the Amazon S3 bucket targeted by the Resource Data
Sync.


=head2 B<REQUIRED> SyncFormat => Str

  A supported sync format. The following format is currently supported:
JsonSerDe



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

