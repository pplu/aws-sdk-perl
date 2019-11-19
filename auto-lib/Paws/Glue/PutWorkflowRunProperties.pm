# Generated from json/callargs_class.tt

package Paws::Glue::PutWorkflowRunProperties;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_WorkflowRunProperties/;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RunId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RunProperties => (is => 'ro', isa => Glue_WorkflowRunProperties, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutWorkflowRunProperties');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::PutWorkflowRunPropertiesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RunProperties' => {
                                    'type' => 'Glue_WorkflowRunProperties',
                                    'class' => 'Paws::Glue::WorkflowRunProperties'
                                  },
               'Name' => {
                           'type' => 'Str'
                         },
               'RunId' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'RunId' => 1,
                    'Name' => 1,
                    'RunProperties' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::PutWorkflowRunProperties - Arguments for method PutWorkflowRunProperties on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutWorkflowRunProperties on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method PutWorkflowRunProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutWorkflowRunProperties.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $PutWorkflowRunPropertiesResponse = $glue->PutWorkflowRunProperties(
      Name          => 'MyNameString',
      RunId         => 'MyIdString',
      RunProperties => {
        'MyIdString' => 'MyGenericString',    # key: min: 1, max: 255
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/PutWorkflowRunProperties>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Name of the workflow which was run.



=head2 B<REQUIRED> RunId => Str

The ID of the workflow run for which the run properties should be
updated.



=head2 B<REQUIRED> RunProperties => Glue_WorkflowRunProperties

The properties to put for the specified run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutWorkflowRunProperties in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

