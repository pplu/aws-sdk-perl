# Generated from json/callargs_class.tt

package Paws::Glue::UpdateWorkflow;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_WorkflowRunProperties/;
  has DefaultRunProperties => (is => 'ro', isa => Glue_WorkflowRunProperties, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateWorkflow');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::UpdateWorkflowResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'DefaultRunProperties' => {
                                           'class' => 'Paws::Glue::WorkflowRunProperties',
                                           'type' => 'Glue_WorkflowRunProperties'
                                         },
               'Description' => {
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

Paws::Glue::UpdateWorkflow - Arguments for method UpdateWorkflow on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkflow on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkflow.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateWorkflowResponse = $glue->UpdateWorkflow(
      Name                 => 'MyNameString',
      DefaultRunProperties => {
        'MyIdString' => 'MyGenericString',    # key: min: 1, max: 255
      },    # OPTIONAL
      Description => 'MyGenericString',    # OPTIONAL
    );

    # Results:
    my $Name = $UpdateWorkflowResponse->Name;

    # Returns a L<Paws::Glue::UpdateWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateWorkflow>

=head1 ATTRIBUTES


=head2 DefaultRunProperties => Glue_WorkflowRunProperties

A collection of properties to be used as part of each execution of the
workflow.



=head2 Description => Str

The description of the workflow.



=head2 B<REQUIRED> Name => Str

Name of the workflow to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkflow in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

