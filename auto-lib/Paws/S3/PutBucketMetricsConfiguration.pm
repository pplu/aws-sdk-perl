
package Paws::S3::PutBucketMetricsConfiguration;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_MetricsConfiguration/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MetricsConfiguration => (is => 'ro', isa => S3_MetricsConfiguration, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketMetricsConfiguration');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?metrics');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MetricsConfiguration' => {
                                           'class' => 'Paws::S3::MetricsConfiguration',
                                           'type' => 'S3_MetricsConfiguration'
                                         },
               'Id' => {
                         'type' => 'Str'
                       },
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'Bucket' => {
                             'type' => 'Str'
                           }
             },
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  },
  'ParamInQuery' => {
                      'Id' => 'id'
                    },
  'ParamInHeader' => {
                       'ContentLength' => 'Content-Length'
                     },
  'IsRequired' => {
                    'MetricsConfiguration' => 1,
                    'Id' => 1,
                    'Bucket' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketMetricsConfiguration - Arguments for method PutBucketMetricsConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketMetricsConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketMetricsConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketMetricsConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketMetricsConfiguration(
      Bucket               => 'MyBucketName',
      Id                   => 'MyMetricsId',
      MetricsConfiguration => {
        Id     => 'MyMetricsId',
        Filter => {
          And => {
            Prefix => 'MyPrefix',    # OPTIONAL
            Tags   => [
              {
                Key   => 'MyObjectKey',    # min: 1
                Value => 'MyValue',

              },
              ...
            ],                             # OPTIONAL
          },    # OPTIONAL
          Prefix => 'MyPrefix',    # OPTIONAL
          Tag    => {
            Key   => 'MyObjectKey',    # min: 1
            Value => 'MyValue',

          },
        },    # OPTIONAL
      },
      ContentLength => 1,    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketMetricsConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which the metrics configuration is set.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 B<REQUIRED> Id => Str

The ID used to identify the metrics configuration.



=head2 B<REQUIRED> MetricsConfiguration => S3_MetricsConfiguration

Specifies the metrics configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketMetricsConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

