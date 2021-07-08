
package Paws::WorkMail::StartMailboxExportJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EntityId => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has S3Prefix => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMailboxExportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::StartMailboxExportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::StartMailboxExportJob - Arguments for method StartMailboxExportJob on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMailboxExportJob on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method StartMailboxExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMailboxExportJob.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $StartMailboxExportJobResponse = $workmail->StartMailboxExportJob(
      ClientToken    => 'MyIdempotencyClientToken',
      EntityId       => 'MyWorkMailIdentifier',
      KmsKeyArn      => 'MyKmsKeyArn',
      OrganizationId => 'MyOrganizationId',
      RoleArn        => 'MyRoleArn',
      S3BucketName   => 'MyS3BucketName',
      S3Prefix       => 'MyS3ObjectKey',
      Description    => 'MyDescription',              # OPTIONAL
    );

    # Results:
    my $JobId = $StartMailboxExportJobResponse->JobId;

    # Returns a L<Paws::WorkMail::StartMailboxExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/StartMailboxExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The idempotency token for the client request.



=head2 Description => Str

The mailbox export job description.



=head2 B<REQUIRED> EntityId => Str

The identifier of the user or resource associated with the mailbox.



=head2 B<REQUIRED> KmsKeyArn => Str

The Amazon Resource Name (ARN) of the symmetric AWS Key Management
Service (AWS KMS) key that encrypts the exported mailbox content.



=head2 B<REQUIRED> OrganizationId => Str

The identifier associated with the organization.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the AWS Identity and Access Management (IAM) role that
grants write permission to the S3 bucket.



=head2 B<REQUIRED> S3BucketName => Str

The name of the S3 bucket.



=head2 B<REQUIRED> S3Prefix => Str

The S3 bucket prefix.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMailboxExportJob in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

