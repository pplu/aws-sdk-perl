# Generated from json/callargs_class.tt

package Paws::Glue::GetWorkflowRuns;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::Glue::Types qw//;
  has IncludeGraph => (is => 'ro', isa => Bool, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetWorkflowRuns');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::GetWorkflowRunsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IncludeGraph' => {
                                   'type' => 'Bool'
                                 },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetWorkflowRuns - Arguments for method GetWorkflowRuns on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflowRuns on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetWorkflowRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflowRuns.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetWorkflowRunsResponse = $glue->GetWorkflowRuns(
      Name         => 'MyNameString',
      IncludeGraph => 1,                    # OPTIONAL
      MaxResults   => 1,                    # OPTIONAL
      NextToken    => 'MyGenericString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetWorkflowRunsResponse->NextToken;
    my $Runs      = $GetWorkflowRunsResponse->Runs;

    # Returns a L<Paws::Glue::GetWorkflowRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetWorkflowRuns>

=head1 ATTRIBUTES


=head2 IncludeGraph => Bool

Specifies whether to include the workflow graph in response or not.



=head2 MaxResults => Int

The maximum number of workflow runs to be included in the response.



=head2 B<REQUIRED> Name => Str

Name of the workflow whose metadata of runs should be returned.



=head2 NextToken => Str

The maximum size of the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflowRuns in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

