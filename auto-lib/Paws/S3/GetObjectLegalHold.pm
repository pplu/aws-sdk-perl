
package Paws::S3::GetObjectLegalHold;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetObjectLegalHold');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?legal-hold');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::GetObjectLegalHoldOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectLegalHold - Arguments for method GetObjectLegalHold on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetObjectLegalHold on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetObjectLegalHold.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetObjectLegalHold.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $GetObjectLegalHoldOutput = $s3->GetObjectLegalHold(
      Bucket       => 'MyBucketName',
      Key          => 'MyObjectKey',
      RequestPayer => 'requester',            # OPTIONAL
      VersionId    => 'MyObjectVersionId',    # OPTIONAL
    );

    # Results:
    my $LegalHold = $GetObjectLegalHoldOutput->LegalHold;

    # Returns a L<Paws::S3::GetObjectLegalHoldOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetObjectLegalHold>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket containing the object whose Legal Hold status you want to
retrieve.



=head2 B<REQUIRED> Key => Str

The key name for the object whose Legal Hold status you want to
retrieve.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 VersionId => Str

The version ID of the object whose Legal Hold status you want to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetObjectLegalHold in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

