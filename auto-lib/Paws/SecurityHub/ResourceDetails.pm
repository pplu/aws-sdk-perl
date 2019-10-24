# Generated from default/object.tt
package Paws::SecurityHub::ResourceDetails;
  use Moo;
  use Types::Standard qw//;
  use Paws::SecurityHub::Types qw/SecurityHub_AwsIamAccessKeyDetails SecurityHub_ContainerDetails SecurityHub_FieldMap SecurityHub_AwsEc2InstanceDetails SecurityHub_AwsS3BucketDetails/;
  has AwsEc2Instance => (is => 'ro', isa => SecurityHub_AwsEc2InstanceDetails);
  has AwsIamAccessKey => (is => 'ro', isa => SecurityHub_AwsIamAccessKeyDetails);
  has AwsS3Bucket => (is => 'ro', isa => SecurityHub_AwsS3BucketDetails);
  has Container => (is => 'ro', isa => SecurityHub_ContainerDetails);
  has Other => (is => 'ro', isa => SecurityHub_FieldMap);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Other' => {
                            'class' => 'Paws::SecurityHub::FieldMap',
                            'type' => 'SecurityHub_FieldMap'
                          },
               'AwsIamAccessKey' => {
                                      'class' => 'Paws::SecurityHub::AwsIamAccessKeyDetails',
                                      'type' => 'SecurityHub_AwsIamAccessKeyDetails'
                                    },
               'Container' => {
                                'class' => 'Paws::SecurityHub::ContainerDetails',
                                'type' => 'SecurityHub_ContainerDetails'
                              },
               'AwsEc2Instance' => {
                                     'class' => 'Paws::SecurityHub::AwsEc2InstanceDetails',
                                     'type' => 'SecurityHub_AwsEc2InstanceDetails'
                                   },
               'AwsS3Bucket' => {
                                  'class' => 'Paws::SecurityHub::AwsS3BucketDetails',
                                  'type' => 'SecurityHub_AwsS3BucketDetails'
                                }
             }
}
;
    return $Params_map;
  }


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

Additional details about a resource related to a finding.

=head1 ATTRIBUTES


=head2 AwsEc2Instance => SecurityHub_AwsEc2InstanceDetails

  Details about an Amazon EC2 instance related to a finding.


=head2 AwsIamAccessKey => SecurityHub_AwsIamAccessKeyDetails

  Details about an IAM access key related to a finding.


=head2 AwsS3Bucket => SecurityHub_AwsS3BucketDetails

  Details about an Amazon S3 Bucket related to a finding.


=head2 Container => SecurityHub_ContainerDetails

  Details about a container resource related to a finding.


=head2 Other => SecurityHub_FieldMap

  Details about a resource that doesn't have a specific type defined.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

