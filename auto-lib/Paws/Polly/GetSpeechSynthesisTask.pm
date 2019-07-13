
package Paws::Polly::GetSpeechSynthesisTask;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TaskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSpeechSynthesisTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/synthesisTasks/{TaskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Polly::GetSpeechSynthesisTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::GetSpeechSynthesisTask - Arguments for method GetSpeechSynthesisTask on L<Paws::Polly>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSpeechSynthesisTask on the
L<Amazon Polly|Paws::Polly> service. Use the attributes of this class
as arguments to method GetSpeechSynthesisTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSpeechSynthesisTask.

=head1 SYNOPSIS

    my $polly = Paws->service('Polly');
    my $GetSpeechSynthesisTaskOutput = $polly->GetSpeechSynthesisTask(
      TaskId => 'MyTaskId',

    );

    # Results:
    my $SynthesisTask = $GetSpeechSynthesisTaskOutput->SynthesisTask;

    # Returns a L<Paws::Polly::GetSpeechSynthesisTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/polly/GetSpeechSynthesisTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskId => Str

The Amazon Polly generated identifier for a speech synthesis task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSpeechSynthesisTask in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

