
package Paws::S3::DeleteObject;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has BypassGovernanceRetention => (is => 'ro', isa => 'Bool', header_name => 'x-amz-bypass-governance-retention', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has MFA => (is => 'ro', isa => 'Str', header_name => 'x-amz-mfa', traits => ['ParamInHeader']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::DeleteObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObject - Arguments for method DeleteObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method DeleteObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $DeleteObjectOutput = $s3->DeleteObject(
      Bucket                    => 'MyBucketName',
      Key                       => 'MyObjectKey',
      BypassGovernanceRetention => 1,                      # OPTIONAL
      MFA                       => 'MyMFA',                # OPTIONAL
      RequestPayer              => 'requester',            # OPTIONAL
      VersionId                 => 'MyObjectVersionId',    # OPTIONAL
    );

    # Results:
    my $DeleteMarker   = $DeleteObjectOutput->DeleteMarker;
    my $RequestCharged = $DeleteObjectOutput->RequestCharged;
    my $VersionId      = $DeleteObjectOutput->VersionId;

    # Returns a L<Paws::S3::DeleteObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/DeleteObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 BypassGovernanceRetention => Bool

Indicates whether S3 Object Lock should bypass Governance-mode
restrictions to process this operation.



=head2 B<REQUIRED> Key => Str





=head2 MFA => Str

The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 VersionId => Str

VersionId used to reference a specific version of the object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

