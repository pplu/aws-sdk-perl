# Generated from json/callargs_class.tt

package Paws::Macie::UpdateS3Resources;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Macie::Types qw/Macie_S3ResourceClassificationUpdate/;
  has MemberAccountId => (is => 'ro', isa => Str, predicate => 1);
  has S3ResourcesUpdate => (is => 'ro', isa => ArrayRef[Macie_S3ResourceClassificationUpdate], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateS3Resources');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Macie::UpdateS3ResourcesResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MemberAccountId' => {
                                      'type' => 'Str'
                                    },
               'S3ResourcesUpdate' => {
                                        'type' => 'ArrayRef[Macie_S3ResourceClassificationUpdate]',
                                        'class' => 'Paws::Macie::S3ResourceClassificationUpdate'
                                      }
             },
  'NameInRequest' => {
                       'MemberAccountId' => 'memberAccountId',
                       'S3ResourcesUpdate' => 's3ResourcesUpdate'
                     },
  'IsRequired' => {
                    'S3ResourcesUpdate' => 1
                  }
}
;
    return $Params_map;
  }

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



=head2 B<REQUIRED> S3ResourcesUpdate => ArrayRef[Macie_S3ResourceClassificationUpdate]

The S3 resources whose classification types you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateS3Resources in L<Paws::Macie>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

