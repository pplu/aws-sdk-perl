# Generated from json/callargs_class.tt

package Paws::SimpleWorkflow::DescribeWorkflowType;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowType/;
  has Domain => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has WorkflowType => (is => 'ro', isa => SimpleWorkflow_WorkflowType, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeWorkflowType');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SimpleWorkflow::WorkflowTypeDetail');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Domain' => {
                             'type' => 'Str'
                           },
               'WorkflowType' => {
                                   'class' => 'Paws::SimpleWorkflow::WorkflowType',
                                   'type' => 'SimpleWorkflow_WorkflowType'
                                 }
             },
  'IsRequired' => {
                    'WorkflowType' => 1,
                    'Domain' => 1
                  },
  'NameInRequest' => {
                       'WorkflowType' => 'workflowType',
                       'Domain' => 'domain'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DescribeWorkflowType - Arguments for method DescribeWorkflowType on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkflowType on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method DescribeWorkflowType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkflowType.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    my $WorkflowTypeDetail = $swf->DescribeWorkflowType(
      Domain       => 'MyDomainName',
      WorkflowType => {
        Name    => 'MyName',       # min: 1, max: 256
        Version => 'MyVersion',    # min: 1, max: 64

      },

    );

    # Results:
    my $Configuration = $WorkflowTypeDetail->Configuration;
    my $TypeInfo      = $WorkflowTypeDetail->TypeInfo;

    # Returns a L<Paws::SimpleWorkflow::WorkflowTypeDetail> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/DescribeWorkflowType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain in which this workflow type is registered.



=head2 B<REQUIRED> WorkflowType => SimpleWorkflow_WorkflowType

The workflow type to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkflowType in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

