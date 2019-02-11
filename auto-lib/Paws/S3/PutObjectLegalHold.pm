
package Paws::S3::PutObjectLegalHold;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has LegalHold => (is => 'ro', isa => 'Paws::S3::ObjectLockLegalHold');
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutObjectLegalHold');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?legal-hold');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::PutObjectLegalHoldOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectLegalHold - Arguments for method PutObjectLegalHold on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutObjectLegalHold on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutObjectLegalHold.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutObjectLegalHold.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $PutObjectLegalHoldOutput = $s3->PutObjectLegalHold(
      Bucket     => 'MyBucketName',
      Key        => 'MyObjectKey',
      ContentMD5 => 'MyContentMD5',    # OPTIONAL
      LegalHold  => {
        Status => 'ON',                # values: ON, OFF; OPTIONAL
      },    # OPTIONAL
      RequestPayer => 'requester',            # OPTIONAL
      VersionId    => 'MyObjectVersionId',    # OPTIONAL
    );

    # Results:
    my $RequestCharged = $PutObjectLegalHoldOutput->RequestCharged;

    # Returns a L<Paws::S3::PutObjectLegalHoldOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutObjectLegalHold>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket containing the object that you want to place a Legal Hold
on.



=head2 ContentMD5 => Str

The MD5 hash for the request body.



=head2 B<REQUIRED> Key => Str

The key name for the object that you want to place a Legal Hold on.



=head2 LegalHold => L<Paws::S3::ObjectLockLegalHold>

Container element for the Legal Hold configuration you want to apply to
the specified object.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 VersionId => Str

The version ID of the object that you want to place a Legal Hold on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutObjectLegalHold in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

