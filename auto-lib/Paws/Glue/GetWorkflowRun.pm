# Generated from json/callargs_class.tt

package Paws::Glue::GetWorkflowRun;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Glue::Types qw//;
  has IncludeGraph => (is => 'ro', isa => Bool, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RunId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetWorkflowRun');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::GetWorkflowRunResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RunId' => 1,
                    'Name' => 1
                  },
  'types' => {
               'IncludeGraph' => {
                                   'type' => 'Bool'
                                 },
               'RunId' => {
                            'type' => 'Str'
                          },
               'Name' => {
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

Paws::Glue::GetWorkflowRun - Arguments for method GetWorkflowRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflowRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetWorkflowRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflowRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetWorkflowRunResponse = $glue->GetWorkflowRun(
      Name         => 'MyNameString',
      RunId        => 'MyIdString',
      IncludeGraph => 1,                # OPTIONAL
    );

    # Results:
    my $Run = $GetWorkflowRunResponse->Run;

    # Returns a L<Paws::Glue::GetWorkflowRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetWorkflowRun>

=head1 ATTRIBUTES


=head2 IncludeGraph => Bool

Specifies whether to include the workflow graph in response or not.



=head2 B<REQUIRED> Name => Str

Name of the workflow being run.



=head2 B<REQUIRED> RunId => Str

The ID of the workflow run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflowRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

