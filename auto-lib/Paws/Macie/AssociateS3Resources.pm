# Generated from json/callargs_class.tt

package Paws::Macie::AssociateS3Resources;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Macie::Types qw/Macie_S3ResourceClassification/;
  has MemberAccountId => (is => 'ro', isa => Str, predicate => 1);
  has S3Resources => (is => 'ro', isa => ArrayRef[Macie_S3ResourceClassification], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociateS3Resources');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Macie::AssociateS3ResourcesResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MemberAccountId' => {
                                      'type' => 'Str'
                                    },
               'S3Resources' => {
                                  'class' => 'Paws::Macie::S3ResourceClassification',
                                  'type' => 'ArrayRef[Macie_S3ResourceClassification]'
                                }
             },
  'NameInRequest' => {
                       'MemberAccountId' => 'memberAccountId',
                       'S3Resources' => 's3Resources'
                     },
  'IsRequired' => {
                    'S3Resources' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie::AssociateS3Resources - Arguments for method AssociateS3Resources on L<Paws::Macie>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateS3Resources on the
L<Amazon Macie|Paws::Macie> service. Use the attributes of this class
as arguments to method AssociateS3Resources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateS3Resources.

=head1 SYNOPSIS

    my $macie = Paws->service('Macie');
    my $AssociateS3ResourcesResult = $macie->AssociateS3Resources(
      S3Resources => [
        {
          BucketName         => 'MyBucketName',    # max: 500
          ClassificationType => {
            Continuous => 'FULL',                  # values: FULL
            OneTime    => 'FULL',                  # values: FULL, NONE

          },
          Prefix => 'MyPrefix',                    # max: 10000; OPTIONAL
        },
        ...
      ],
      MemberAccountId => 'MyAWSAccountId',         # OPTIONAL
    );

    # Results:
    my $FailedS3Resources = $AssociateS3ResourcesResult->FailedS3Resources;

    # Returns a L<Paws::Macie::AssociateS3ResourcesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie/AssociateS3Resources>

=head1 ATTRIBUTES


=head2 MemberAccountId => Str

The ID of the Amazon Macie member account whose resources you want to
associate with Macie.



=head2 B<REQUIRED> S3Resources => ArrayRef[Macie_S3ResourceClassification]

The S3 resources that you want to associate with Amazon Macie for
monitoring and data classification.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateS3Resources in L<Paws::Macie>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

