# Generated from json/callargs_class.tt

package Paws::Personalize::ListBatchInferenceJobs;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Personalize::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has SolutionVersionArn => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListBatchInferenceJobs');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::ListBatchInferenceJobsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'SolutionVersionArn' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'MaxResults' => 'maxResults',
                       'NextToken' => 'nextToken',
                       'SolutionVersionArn' => 'solutionVersionArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListBatchInferenceJobs - Arguments for method ListBatchInferenceJobs on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBatchInferenceJobs on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListBatchInferenceJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBatchInferenceJobs.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListBatchInferenceJobsResponse = $personalize->ListBatchInferenceJobs(
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyNextToken',    # OPTIONAL
      SolutionVersionArn => 'MyArn',          # OPTIONAL
    );

    # Results:
    my $BatchInferenceJobs =
      $ListBatchInferenceJobsResponse->BatchInferenceJobs;
    my $NextToken = $ListBatchInferenceJobsResponse->NextToken;

    # Returns a L<Paws::Personalize::ListBatchInferenceJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListBatchInferenceJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of batch inference job results to return in each
page. The default value is 100.



=head2 NextToken => Str

The token to request the next page of results.



=head2 SolutionVersionArn => Str

The Amazon Resource Name (ARN) of the solution version from which the
batch inference jobs were created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBatchInferenceJobs in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

