# Generated from json/callargs_class.tt

package Paws::SimpleWorkflow::RegisterDomain;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_ResourceTag/;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[SimpleWorkflow_ResourceTag], predicate => 1);
  has WorkflowExecutionRetentionPeriodInDays => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RegisterDomain');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WorkflowExecutionRetentionPeriodInDays' => {
                                                             'type' => 'Str'
                                                           },
               'Tags' => {
                           'class' => 'Paws::SimpleWorkflow::ResourceTag',
                           'type' => 'ArrayRef[SimpleWorkflow_ResourceTag]'
                         },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'WorkflowExecutionRetentionPeriodInDays' => 'workflowExecutionRetentionPeriodInDays',
                       'Tags' => 'tags',
                       'Name' => 'name',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'WorkflowExecutionRetentionPeriodInDays' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::RegisterDomain - Arguments for method RegisterDomain on L<Paws::SimpleWorkflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterDomain on the
L<Amazon Simple Workflow Service|Paws::SimpleWorkflow> service. Use the attributes of this class
as arguments to method RegisterDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterDomain.

=head1 SYNOPSIS

    my $swf = Paws->service('SimpleWorkflow');
    $swf->RegisterDomain(
      Name                                   => 'MyDomainName',
      WorkflowExecutionRetentionPeriodInDays => 'MyDurationInDays',
      Description                            => 'MyDescription',      # OPTIONAL
      Tags                                   => [
        {
          Key   => 'MyResourceTagKey',      # min: 1, max: 128
          Value => 'MyResourceTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/swf/RegisterDomain>

=head1 ATTRIBUTES


=head2 Description => Str

A text description of the domain.



=head2 B<REQUIRED> Name => Str

Name of the domain to register. The name must be unique in the region
that the domain is registered in.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (C<\u0000-\u001f> | C<\u007f-\u009f>). Also, it must
not I<be> the literal string C<arn>.



=head2 Tags => ArrayRef[SimpleWorkflow_ResourceTag]

Tags to be added when registering a domain.

Tags may only contain unicode letters, digits, whitespace, or these
symbols: C<_ . : / = + - @>.



=head2 B<REQUIRED> WorkflowExecutionRetentionPeriodInDays => Str

The duration (in days) that records and histories of workflow
executions on the domain should be kept by the service. After the
retention period, the workflow execution isn't available in the results
of visibility calls.

If you pass the value C<NONE> or C<0> (zero), then the workflow
execution history isn't retained. As soon as the workflow execution
completes, the execution record and its history are deleted.

The maximum workflow execution retention period is 90 days. For more
information about Amazon SWF service limits, see: Amazon SWF Service
Limits
(https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html)
in the I<Amazon SWF Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterDomain in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

