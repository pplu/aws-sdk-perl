
package Paws::Translate::CreateParallelData;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EncryptionKey => (is => 'ro', isa => 'Paws::Translate::EncryptionKey');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ParallelDataConfig => (is => 'ro', isa => 'Paws::Translate::ParallelDataConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateParallelData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::CreateParallelDataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::CreateParallelData - Arguments for method CreateParallelData on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateParallelData on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method CreateParallelData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateParallelData.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $CreateParallelDataResponse = $translate->CreateParallelData(
      ClientToken        => 'MyClientTokenString',
      Name               => 'MyResourceName',
      ParallelDataConfig => {
        Format => 'TSV',        # values: TSV, CSV, TMX
        S3Uri  => 'MyS3Uri',    # max: 1024

      },
      Description   => 'MyDescription',    # OPTIONAL
      EncryptionKey => {
        Id   => 'MyEncryptionKeyID',       # min: 1, max: 400
        Type => 'KMS',                     # values: KMS

      },    # OPTIONAL
    );

    # Results:
    my $Name   = $CreateParallelDataResponse->Name;
    my $Status = $CreateParallelDataResponse->Status;

    # Returns a L<Paws::Translate::CreateParallelDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/CreateParallelData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. This token is automatically
generated when you use Amazon Translate through an AWS SDK.



=head2 Description => Str

A custom description for the parallel data resource in Amazon
Translate.



=head2 EncryptionKey => L<Paws::Translate::EncryptionKey>





=head2 B<REQUIRED> Name => Str

A custom name for the parallel data resource in Amazon Translate. You
must assign a name that is unique in the account and region.



=head2 B<REQUIRED> ParallelDataConfig => L<Paws::Translate::ParallelDataConfig>

Specifies the format and S3 location of the parallel data input file.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateParallelData in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

