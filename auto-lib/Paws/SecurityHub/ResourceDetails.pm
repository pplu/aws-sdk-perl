package Paws::SecurityHub::ResourceDetails;
  use Moose;
  has AwsEc2Instance => (is => 'ro', isa => 'Paws::SecurityHub::AwsEc2InstanceDetails');
  has AwsIamAccessKey => (is => 'ro', isa => 'Paws::SecurityHub::AwsIamAccessKeyDetails');
  has AwsS3Bucket => (is => 'ro', isa => 'Paws::SecurityHub::AwsS3BucketDetails');
  has Container => (is => 'ro', isa => 'Paws::SecurityHub::ContainerDetails');
  has Other => (is => 'ro', isa => 'Paws::SecurityHub::FieldMap');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ResourceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::ResourceDetails object:

  $service_obj->Method(Att1 => { AwsEc2Instance => $value, ..., Other => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::ResourceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsEc2Instance

=head1 DESCRIPTION

Provides additional details about the resource.

=head1 ATTRIBUTES


=head2 AwsEc2Instance => L<Paws::SecurityHub::AwsEc2InstanceDetails>

  The details of an AWS EC2 instance.


=head2 AwsIamAccessKey => L<Paws::SecurityHub::AwsIamAccessKeyDetails>

  AWS IAM access key details related to a finding.


=head2 AwsS3Bucket => L<Paws::SecurityHub::AwsS3BucketDetails>

  The details of an AWS S3 Bucket.


=head2 Container => L<Paws::SecurityHub::ContainerDetails>

  Container details related to a finding.


=head2 Other => L<Paws::SecurityHub::FieldMap>

  The details of a resource that does not have a specific sub-field for
the resource type defined.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

