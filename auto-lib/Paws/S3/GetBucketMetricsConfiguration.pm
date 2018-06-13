
package Paws::S3::GetBucketMetricsConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Id => (is => 'ro', isa => 'Str', query_name => 'id', traits => ['ParamInQuery'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketMetricsConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?metrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketMetricsConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketMetricsConfiguration - Arguments for method GetBucketMetricsConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketMetricsConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetBucketMetricsConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketMetricsConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $GetBucketMetricsConfigurationOutput =
      $s3->GetBucketMetricsConfiguration(
      Bucket => 'MyBucketName',
      Id     => 'MyMetricsId',

      );

    # Results:
    my $MetricsConfiguration =
      $GetBucketMetricsConfigurationOutput->MetricsConfiguration;

    # Returns a L<Paws::S3::GetBucketMetricsConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetBucketMetricsConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket containing the metrics configuration to
retrieve.



=head2 B<REQUIRED> Id => Str

The ID used to identify the metrics configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketMetricsConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

