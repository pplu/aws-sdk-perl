
package Paws::Macie2::CreateSampleFindings;
  use Moose;
  has FindingTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'findingTypes');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSampleFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings/sample');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::CreateSampleFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::CreateSampleFindings - Arguments for method CreateSampleFindings on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSampleFindings on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method CreateSampleFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSampleFindings.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $CreateSampleFindingsResponse = $macie2->CreateSampleFindings(
      FindingTypes => [
        'SensitiveData:S3Object/Multiple',
        ... # values: SensitiveData:S3Object/Multiple, SensitiveData:S3Object/Financial, SensitiveData:S3Object/Personal, SensitiveData:S3Object/Credentials, SensitiveData:S3Object/CustomIdentifier, Policy:IAMUser/S3BucketPublic, Policy:IAMUser/S3BucketSharedExternally, Policy:IAMUser/S3BucketReplicatedExternally, Policy:IAMUser/S3BucketEncryptionDisabled, Policy:IAMUser/S3BlockPublicAccessDisabled
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/CreateSampleFindings>

=head1 ATTRIBUTES


=head2 FindingTypes => ArrayRef[Str|Undef]

An array that lists one or more types of findings to include in the set
of sample findings. Currently, the only supported value is
Policy:IAMUser/S3BucketEncryptionDisabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSampleFindings in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

