
package Paws::SageMaker::CreatePresignedNotebookInstanceUrl;
  use Moose;
  has NotebookInstanceName => (is => 'ro', isa => 'Str', required => 1);
  has SessionExpirationDurationInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePresignedNotebookInstanceUrl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreatePresignedNotebookInstanceUrlOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreatePresignedNotebookInstanceUrl - Arguments for method CreatePresignedNotebookInstanceUrl on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePresignedNotebookInstanceUrl on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreatePresignedNotebookInstanceUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePresignedNotebookInstanceUrl.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreatePresignedNotebookInstanceUrlOutput =
      $api . sagemaker->CreatePresignedNotebookInstanceUrl(
      NotebookInstanceName               => 'MyNotebookInstanceName',
      SessionExpirationDurationInSeconds => 1,                        # OPTIONAL
      );

    # Results:
    my $AuthorizedUrl =
      $CreatePresignedNotebookInstanceUrlOutput->AuthorizedUrl;

# Returns a L<Paws::SageMaker::CreatePresignedNotebookInstanceUrlOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreatePresignedNotebookInstanceUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotebookInstanceName => Str

The name of the notebook instance.



=head2 SessionExpirationDurationInSeconds => Int

The duration of the session, in seconds. The default is 12 hours.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePresignedNotebookInstanceUrl in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

