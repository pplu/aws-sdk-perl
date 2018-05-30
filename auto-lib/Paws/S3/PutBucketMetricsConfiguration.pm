
package Paws::S3::PutBucketMetricsConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Id => (is => 'ro', isa => 'Str', query_name => 'id', traits => ['ParamInQuery'], required => 1);
  has MetricsConfiguration => (is => 'ro', isa => 'Paws::S3::MetricsConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketMetricsConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?metrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketMetricsConfiguration - Arguments for method PutBucketMetricsConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketMetricsConfiguration on the 
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketMetricsConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketMetricsConfiguration.

As an example:

  $service_obj->PutBucketMetricsConfiguration(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketMetricsConfiguration>
=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which the metrics configuration is set.



=head2 B<REQUIRED> Id => Str

The ID used to identify the metrics configuration.



=head2 B<REQUIRED> MetricsConfiguration => L<Paws::S3::MetricsConfiguration>

Specifies the metrics configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketMetricsConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

