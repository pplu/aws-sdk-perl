
package Paws::Polly::ListSpeechSynthesisTasks;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Polly::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListSpeechSynthesisTasks');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/synthesisTasks');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Polly::ListSpeechSynthesisTasksOutput');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'NextToken' => 'NextToken',
                      'MaxResults' => 'MaxResults',
                      'Status' => 'Status'
                    },
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::ListSpeechSynthesisTasks - Arguments for method ListSpeechSynthesisTasks on L<Paws::Polly>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSpeechSynthesisTasks on the
L<Amazon Polly|Paws::Polly> service. Use the attributes of this class
as arguments to method ListSpeechSynthesisTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSpeechSynthesisTasks.

=head1 SYNOPSIS

    my $polly = Paws->service('Polly');
    my $ListSpeechSynthesisTasksOutput = $polly->ListSpeechSynthesisTasks(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Status     => 'scheduled',      # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListSpeechSynthesisTasksOutput->NextToken;
    my $SynthesisTasks = $ListSpeechSynthesisTasksOutput->SynthesisTasks;

    # Returns a L<Paws::Polly::ListSpeechSynthesisTasksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/polly/ListSpeechSynthesisTasks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of speech synthesis tasks returned in a List operation.



=head2 NextToken => Str

The pagination token to use in the next request to continue the listing
of speech synthesis tasks.



=head2 Status => Str

Status of the speech synthesis tasks returned in a List operation

Valid values are: C<"scheduled">, C<"inProgress">, C<"completed">, C<"failed">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSpeechSynthesisTasks in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

