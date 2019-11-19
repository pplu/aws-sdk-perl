
package Paws::S3::GetObjectLockConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObjectLockConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?object-lock');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetObjectLockConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectLockConfiguration - Arguments for method GetObjectLockConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetObjectLockConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetObjectLockConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetObjectLockConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $GetObjectLockConfigurationOutput = $s3->GetObjectLockConfiguration(
      Bucket => 'MyBucketName',

    );

    # Results:
    my $ObjectLockConfiguration =
      $GetObjectLockConfigurationOutput->ObjectLockConfiguration;

    # Returns a L<Paws::S3::GetObjectLockConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetObjectLockConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket whose Object Lock configuration you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetObjectLockConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

