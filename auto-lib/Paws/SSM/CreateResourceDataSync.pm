
package Paws::SSM::CreateResourceDataSync;
  use Moose;
  has S3Destination => (is => 'ro', isa => 'Paws::SSM::ResourceDataSyncS3Destination', required => 1);
  has SyncName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceDataSync');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateResourceDataSyncResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateResourceDataSync - Arguments for method CreateResourceDataSync on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceDataSync on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method CreateResourceDataSync.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceDataSync.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $CreateResourceDataSyncResult = $ssm->CreateResourceDataSync(
      S3Destination => {
        BucketName => 'MyResourceDataSyncS3BucketName',    # min: 1, max: 2048
        Region     => 'MyResourceDataSyncS3Region',        # min: 1, max: 64
        SyncFormat => 'JsonSerDe',                         # values: JsonSerDe
        AWSKMSKeyARN =>
          'MyResourceDataSyncAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL
        Prefix => 'MyResourceDataSyncS3Prefix',    # min: 1, max: 256; OPTIONAL
      },
      SyncName => 'MyResourceDataSyncName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/CreateResourceDataSync>

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Destination => L<Paws::SSM::ResourceDataSyncS3Destination>

Amazon S3 configuration details for the sync.



=head2 B<REQUIRED> SyncName => Str

A name for the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceDataSync in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

