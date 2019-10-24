# Generated from default/object.tt
package Paws::SimpleWorkflow::DomainConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw//;
  has WorkflowExecutionRetentionPeriodInDays => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WorkflowExecutionRetentionPeriodInDays' => {
                                                             'type' => 'Str'
                                                           }
             },
  'NameInRequest' => {
                       'WorkflowExecutionRetentionPeriodInDays' => 'workflowExecutionRetentionPeriodInDays'
                     },
  'IsRequired' => {
                    'WorkflowExecutionRetentionPeriodInDays' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DomainConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::DomainConfiguration object:

  $service_obj->Method(Att1 => { WorkflowExecutionRetentionPeriodInDays => $value, ..., WorkflowExecutionRetentionPeriodInDays => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::DomainConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->WorkflowExecutionRetentionPeriodInDays

=head1 DESCRIPTION

Contains the configuration settings of a domain.

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkflowExecutionRetentionPeriodInDays => Str

  The retention period for workflow executions in this domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

