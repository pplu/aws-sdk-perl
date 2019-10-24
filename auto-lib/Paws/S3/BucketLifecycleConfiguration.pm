# Generated from default/object.tt
package Paws::S3::BucketLifecycleConfiguration;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::S3::Types qw/S3_LifecycleRule/;
  has Rules => (is => 'ro', isa => ArrayRef[S3_LifecycleRule], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rules' => {
                            'class' => 'Paws::S3::LifecycleRule',
                            'type' => 'ArrayRef[S3_LifecycleRule]'
                          }
             },
  'NameInRequest' => {
                       'Rules' => 'Rule'
                     },
  'IsRequired' => {
                    'Rules' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::BucketLifecycleConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::BucketLifecycleConfiguration object:

  $service_obj->Method(Att1 => { Rules => $value, ..., Rules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::BucketLifecycleConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Rules

=head1 DESCRIPTION

Specifies the lifecycle configuration for objects in an Amazon S3
bucket. For more information, see Object Lifecycle Management
(https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html)
in the I<Amazon Simple Storage Service Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Rules => ArrayRef[S3_LifecycleRule]

  A lifecycle rule for individual objects in an Amazon S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

