# Generated from json/callargs_class.tt

package Paws::Glue::GetWorkflow;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Glue::Types qw//;
  has IncludeGraph => (is => 'ro', isa => Bool, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetWorkflow');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::GetWorkflowResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'IncludeGraph' => {
                                   'type' => 'Bool'
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

Paws::Glue::GetWorkflow - Arguments for method GetWorkflow on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflow on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflow.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetWorkflowResponse = $glue->GetWorkflow(
      Name         => 'MyNameString',
      IncludeGraph => 1,                # OPTIONAL
    );

    # Results:
    my $Workflow = $GetWorkflowResponse->Workflow;

    # Returns a L<Paws::Glue::GetWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetWorkflow>

=head1 ATTRIBUTES


=head2 IncludeGraph => Bool

Specifies whether to include a graph when returning the workflow
resource metadata.



=head2 B<REQUIRED> Name => Str

The name of the workflow to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflow in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

