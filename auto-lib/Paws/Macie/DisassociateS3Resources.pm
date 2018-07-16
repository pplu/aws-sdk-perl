
package Paws::Macie::DisassociateS3Resources;
  use Moose;
  has AssociatedS3Resources => (is => 'ro', isa => 'ArrayRef[Paws::Macie::S3Resource]', traits => ['NameInRequest'], request_name => 'associatedS3Resources' , required => 1);
  has MemberAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'memberAccountId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateS3Resources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie::DisassociateS3ResourcesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie::DisassociateS3Resources - Arguments for method DisassociateS3Resources on L<Paws::Macie>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateS3Resources on the
L<Amazon Macie|Paws::Macie> service. Use the attributes of this class
as arguments to method DisassociateS3Resources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateS3Resources.

=head1 SYNOPSIS

    my $macie = Paws->service('Macie');
    my $DisassociateS3ResourcesResult = $macie->DisassociateS3Resources(
      AssociatedS3Resources => [
        {
          BucketName => 'MyBucketName',    # max: 500
          Prefix     => 'MyPrefix',        # max: 10000; OPTIONAL
        },
        ...
      ],
      MemberAccountId => 'MyAWSAccountId',    # OPTIONAL
    );

    # Results:
    my $FailedS3Resources = $DisassociateS3ResourcesResult->FailedS3Resources;

    # Returns a L<Paws::Macie::DisassociateS3ResourcesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie/DisassociateS3Resources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociatedS3Resources => ArrayRef[L<Paws::Macie::S3Resource>]

The S3 resources (buckets or prefixes) that you want to remove from
being monitored and classified by Amazon Macie.



=head2 MemberAccountId => Str

The ID of the Amazon Macie member account whose resources you want to
remove from being monitored by Amazon Macie.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateS3Resources in L<Paws::Macie>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

