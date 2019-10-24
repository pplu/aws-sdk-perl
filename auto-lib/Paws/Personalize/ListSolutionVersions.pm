# Generated from json/callargs_class.tt

package Paws::Personalize::ListSolutionVersions;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Personalize::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has SolutionArn => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListSolutionVersions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::ListSolutionVersionsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SolutionArn' => {
                                  'type' => 'Str'
                                },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'SolutionArn' => 'solutionArn',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListSolutionVersions - Arguments for method ListSolutionVersions on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSolutionVersions on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListSolutionVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSolutionVersions.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListSolutionVersionsResponse = $personalize->ListSolutionVersions(
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
      SolutionArn => 'MyArn',          # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListSolutionVersionsResponse->NextToken;
    my $SolutionVersions = $ListSolutionVersionsResponse->SolutionVersions;

    # Returns a L<Paws::Personalize::ListSolutionVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListSolutionVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of solution versions to return.



=head2 NextToken => Str

A token returned from the previous call to C<ListSolutionVersions> for
getting the next set of solution versions (if they exist).



=head2 SolutionArn => Str

The Amazon Resource Name (ARN) of the solution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSolutionVersions in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

