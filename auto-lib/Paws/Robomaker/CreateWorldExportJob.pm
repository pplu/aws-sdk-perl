
package Paws::Robomaker::CreateWorldExportJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has IamRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamRole', required => 1);
  has OutputLocation => (is => 'ro', isa => 'Paws::Robomaker::OutputLocation', traits => ['NameInRequest'], request_name => 'outputLocation', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Worlds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'worlds', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorldExportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createWorldExportJob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::CreateWorldExportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateWorldExportJob - Arguments for method CreateWorldExportJob on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorldExportJob on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateWorldExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorldExportJob.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateWorldExportJobResponse = $robomaker->CreateWorldExportJob(
      IamRole        => 'MyIamRole',
      OutputLocation => {
        S3Bucket => 'MyS3Bucket',    # min: 3, max: 63; OPTIONAL
        S3Prefix => 'MyS3Key',       # min: 1, max: 1024; OPTIONAL
      },
      Worlds => [
        'MyArn', ...                 # min: 1, max: 1224
      ],
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn                = $CreateWorldExportJobResponse->Arn;
    my $ClientRequestToken = $CreateWorldExportJobResponse->ClientRequestToken;
    my $CreatedAt          = $CreateWorldExportJobResponse->CreatedAt;
    my $FailureCode        = $CreateWorldExportJobResponse->FailureCode;
    my $IamRole            = $CreateWorldExportJobResponse->IamRole;
    my $OutputLocation     = $CreateWorldExportJobResponse->OutputLocation;
    my $Status             = $CreateWorldExportJobResponse->Status;
    my $Tags               = $CreateWorldExportJobResponse->Tags;

    # Returns a L<Paws::Robomaker::CreateWorldExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateWorldExportJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> IamRole => Str

The IAM role that the world export process uses to access the Amazon S3
bucket and put the export.



=head2 B<REQUIRED> OutputLocation => L<Paws::Robomaker::OutputLocation>





=head2 Tags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
world export job.



=head2 B<REQUIRED> Worlds => ArrayRef[Str|Undef]

A list of Amazon Resource Names (arns) that correspond to worlds to
export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorldExportJob in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

