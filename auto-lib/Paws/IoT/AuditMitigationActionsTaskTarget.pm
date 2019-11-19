# Generated from default/object.tt
package Paws::IoT::AuditMitigationActionsTaskTarget;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw/IoT_AuditCheckToReasonCodeFilter/;
  has AuditCheckToReasonCodeFilter => (is => 'ro', isa => IoT_AuditCheckToReasonCodeFilter);
  has AuditTaskId => (is => 'ro', isa => Str);
  has FindingIds => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'FindingIds' => 'findingIds',
                       'AuditCheckToReasonCodeFilter' => 'auditCheckToReasonCodeFilter',
                       'AuditTaskId' => 'auditTaskId'
                     },
  'types' => {
               'FindingIds' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'AuditCheckToReasonCodeFilter' => {
                                                   'class' => 'Paws::IoT::AuditCheckToReasonCodeFilter',
                                                   'type' => 'IoT_AuditCheckToReasonCodeFilter'
                                                 },
               'AuditTaskId' => {
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

Paws::IoT::AuditMitigationActionsTaskTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AuditMitigationActionsTaskTarget object:

  $service_obj->Method(Att1 => { AuditCheckToReasonCodeFilter => $value, ..., FindingIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AuditMitigationActionsTaskTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->AuditCheckToReasonCodeFilter

=head1 DESCRIPTION

Used in MitigationActionParams, this information identifies the target
findings to which the mitigation actions are applied. Only one entry
appears.

=head1 ATTRIBUTES


=head2 AuditCheckToReasonCodeFilter => IoT_AuditCheckToReasonCodeFilter

  Specifies a filter in the form of an audit check and set of reason
codes that identify the findings from the audit to which the audit
mitigation actions task apply.


=head2 AuditTaskId => Str

  If the task will apply a mitigation action to findings from a specific
audit, this value uniquely identifies the audit.


=head2 FindingIds => ArrayRef[Str|Undef]

  If the task will apply a mitigation action to one or more listed
findings, this value uniquely identifies those findings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

