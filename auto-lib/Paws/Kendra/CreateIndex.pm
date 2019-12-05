
package Paws::Kendra::CreateIndex;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::Kendra::ServerSideEncryptionConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIndex');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::CreateIndexResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateIndex - Arguments for method CreateIndex on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIndex on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method CreateIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIndex.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $CreateIndexResponse = $kendra->CreateIndex(
      Name                              => 'MyIndexName',
      RoleArn                           => 'MyRoleArn',
      Description                       => 'MyDescription',    # OPTIONAL
      ServerSideEncryptionConfiguration => {
        KmsKeyId => 'MyKmsKeyId',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Id = $CreateIndexResponse->Id;

    # Returns a L<Paws::Kendra::CreateIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/CreateIndex>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the index.



=head2 B<REQUIRED> Name => Str

The name for the new index.



=head2 B<REQUIRED> RoleArn => Str

An IAM role that gives Amazon Kendra permissions to access your Amazon
CloudWatch logs and metrics. This is also the role used when you use
the C<BatchPutDocument> operation to index documents from an Amazon S3
bucket.



=head2 ServerSideEncryptionConfiguration => L<Paws::Kendra::ServerSideEncryptionConfiguration>

The identifier of the KMS key to use to encrypt data indexed by Amazon
Kendra.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIndex in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

