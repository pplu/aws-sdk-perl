
package Paws::S3::GetBucketPolicy;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetBucketPolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketPolicy - Arguments for method GetBucketPolicy on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketPolicy on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetBucketPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketPolicy.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $GetBucketPolicyOutput = $s3->GetBucketPolicy(
      Bucket => 'MyBucketName',

    );

    # Results:
    my $Policy = $GetBucketPolicyOutput->Policy;

    # Returns a L<Paws::S3::GetBucketPolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetBucketPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketPolicy in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

