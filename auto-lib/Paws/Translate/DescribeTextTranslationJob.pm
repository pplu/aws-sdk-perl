
package Paws::Translate::DescribeTextTranslationJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTextTranslationJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::DescribeTextTranslationJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::DescribeTextTranslationJob - Arguments for method DescribeTextTranslationJob on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTextTranslationJob on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method DescribeTextTranslationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTextTranslationJob.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $DescribeTextTranslationJobResponse =
      $translate->DescribeTextTranslationJob(
      JobId => 'MyJobId',

      );

    # Results:
    my $TextTranslationJobProperties =
      $DescribeTextTranslationJobResponse->TextTranslationJobProperties;

    # Returns a L<Paws::Translate::DescribeTextTranslationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/DescribeTextTranslationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier that Amazon Translate generated for the job. The
StartTextTranslationJob operation returns this identifier in its
response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTextTranslationJob in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

