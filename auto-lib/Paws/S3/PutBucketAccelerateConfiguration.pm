
package Paws::S3::PutBucketAccelerateConfiguration;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_AccelerateConfiguration/;
  has AccelerateConfiguration => (is => 'ro', isa => S3_AccelerateConfiguration, required => 1, predicate => 1);
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketAccelerateConfiguration');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?accelerate');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'AccelerateConfiguration' => {
                                              'class' => 'Paws::S3::AccelerateConfiguration',
                                              'type' => 'S3_AccelerateConfiguration'
                                            }
             },
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  },
  'ParamInHeader' => {
                       'ContentLength' => 'Content-Length'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketAccelerateConfiguration - Arguments for method PutBucketAccelerateConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketAccelerateConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketAccelerateConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketAccelerateConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketAccelerateConfiguration(
      AccelerateConfiguration => {
        Status => 'Enabled',    # values: Enabled, Suspended; OPTIONAL
      },
      Bucket        => 'MyBucketName',
      ContentLength => 1,                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketAccelerateConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccelerateConfiguration => S3_AccelerateConfiguration

Specifies the Accelerate Configuration you want to set for the bucket.



=head2 B<REQUIRED> Bucket => Str

Name of the bucket for which the accelerate configuration is set.



=head2 ContentLength => Int

Size of the body in bytes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketAccelerateConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

