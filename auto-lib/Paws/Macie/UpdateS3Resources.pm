
package Paws::Macie::UpdateS3Resources;
  use Moose;
  has MemberAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'memberAccountId' );
  has S3ResourcesUpdate => (is => 'ro', isa => 'ArrayRef[Paws::Macie::S3ResourceClassificationUpdate]', traits => ['NameInRequest'], request_name => 's3ResourcesUpdate' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateS3Resources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie::UpdateS3ResourcesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie::UpdateS3Resources - Arguments for method UpdateS3Resources on L<Paws::Macie>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateS3Resources on the
L<Amazon Macie|Paws::Macie> service. Use the attributes of this class
as arguments to method UpdateS3Resources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateS3Resources.

=head1 SYNOPSIS

    my $macie = Paws->service('Macie');
    my $UpdateS3ResourcesResult = $macie->UpdateS3Resources(
      S3ResourcesUpdate => [
        {
          BucketName               => 'MyBucketName',    # max: 500
          ClassificationTypeUpdate => {
            Continuous => 'FULL',    # values: FULL; OPTIONAL
            OneTime    => 'FULL',    # values: FULL, NONE; OPTIONAL
          },
          Prefix => 'MyPrefix',      # max: 10000; OPTIONAL
        },
        ...
      ],
      MemberAccountId => 'MyAWSAccountId',    # OPTIONAL
    );

    # Results:
    my $FailedS3Resources = $UpdateS3ResourcesResult->FailedS3Resources;

    # Returns a L<Paws::Macie::UpdateS3ResourcesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie/UpdateS3Resources>

=head1 ATTRIBUTES


=head2 MemberAccountId => Str

The AWS ID of the Amazon Macie member account whose S3 resources'
classification types you want to update.



=head2 B<REQUIRED> S3ResourcesUpdate => ArrayRef[L<Paws::Macie::S3ResourceClassificationUpdate>]

The S3 resources whose classification types you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateS3Resources in L<Paws::Macie>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

