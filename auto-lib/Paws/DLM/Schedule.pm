# Generated from default/object.tt
package Paws::DLM::Schedule;
  use Moo;
  use Types::Standard qw/Bool Str ArrayRef/;
  use Paws::DLM::Types qw/DLM_RetainRule DLM_CreateRule DLM_Tag/;
  has CopyTags => (is => 'ro', isa => Bool);
  has CreateRule => (is => 'ro', isa => DLM_CreateRule);
  has Name => (is => 'ro', isa => Str);
  has RetainRule => (is => 'ro', isa => DLM_RetainRule);
  has TagsToAdd => (is => 'ro', isa => ArrayRef[DLM_Tag]);
  has VariableTags => (is => 'ro', isa => ArrayRef[DLM_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RetainRule' => {
                                 'class' => 'Paws::DLM::RetainRule',
                                 'type' => 'DLM_RetainRule'
                               },
               'CopyTags' => {
                               'type' => 'Bool'
                             },
               'VariableTags' => {
                                   'class' => 'Paws::DLM::Tag',
                                   'type' => 'ArrayRef[DLM_Tag]'
                                 },
               'CreateRule' => {
                                 'class' => 'Paws::DLM::CreateRule',
                                 'type' => 'DLM_CreateRule'
                               },
               'TagsToAdd' => {
                                'class' => 'Paws::DLM::Tag',
                                'type' => 'ArrayRef[DLM_Tag]'
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

Paws::DLM::Schedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::Schedule object:

  $service_obj->Method(Att1 => { CopyTags => $value, ..., VariableTags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::Schedule object:

  $result = $service_obj->Method(...);
  $result->Att1->CopyTags

=head1 DESCRIPTION

Specifies a schedule.

=head1 ATTRIBUTES


=head2 CopyTags => Bool

  Copy all user-defined tags on a source volume to snapshots of the
volume created by this policy.


=head2 CreateRule => DLM_CreateRule

  The create rule.


=head2 Name => Str

  The name of the schedule.


=head2 RetainRule => DLM_RetainRule

  The retain rule.


=head2 TagsToAdd => ArrayRef[DLM_Tag]

  The tags to apply to policy-created resources. These user-defined tags
are in addition to the AWS-added lifecycle tags.


=head2 VariableTags => ArrayRef[DLM_Tag]

  A collection of key/value pairs with values determined dynamically when
the policy is executed. Keys may be any valid Amazon EC2 tag key.
Values must be in one of the two following formats: C<$(instance-id)>
or C<$(timestamp)>. Variable tags are only valid for EBS Snapshot
Management E<ndash> Instance policies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

