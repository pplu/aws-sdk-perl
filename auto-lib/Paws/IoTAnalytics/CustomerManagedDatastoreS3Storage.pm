package Paws::IoTAnalytics::CustomerManagedDatastoreS3Storage;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', request_name => 'bucket', traits => ['NameInRequest'], required => 1);
  has KeyPrefix => (is => 'ro', isa => 'Str', request_name => 'keyPrefix', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CustomerManagedDatastoreS3Storage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::CustomerManagedDatastoreS3Storage object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::CustomerManagedDatastoreS3Storage object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

Use this to store data store data in an S3 bucket that you manage.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

  The name of the Amazon S3 bucket in which data store data is stored.


=head2 KeyPrefix => Str

  The prefix used to create the keys of the data store data objects. Each
object in an Amazon S3 bucket has a key that is its unique identifier
within the bucket (each object in a bucket has exactly one key).


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the role which grants AWS IoT Analytics permission to
interact with your Amazon S3 resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

