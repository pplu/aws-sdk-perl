# Generated from default/object.tt
package Paws::DLM::PolicyDetails;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::DLM::Types qw/DLM_Tag DLM_Parameters DLM_Schedule/;
  has Parameters => (is => 'ro', isa => DLM_Parameters);
  has PolicyType => (is => 'ro', isa => Str);
  has ResourceTypes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Schedules => (is => 'ro', isa => ArrayRef[DLM_Schedule]);
  has TargetTags => (is => 'ro', isa => ArrayRef[DLM_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceTypes' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'Parameters' => {
                                 'type' => 'DLM_Parameters',
                                 'class' => 'Paws::DLM::Parameters'
                               },
               'Schedules' => {
                                'type' => 'ArrayRef[DLM_Schedule]',
                                'class' => 'Paws::DLM::Schedule'
                              },
               'PolicyType' => {
                                 'type' => 'Str'
                               },
               'TargetTags' => {
                                 'type' => 'ArrayRef[DLM_Tag]',
                                 'class' => 'Paws::DLM::Tag'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::PolicyDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::PolicyDetails object:

  $service_obj->Method(Att1 => { Parameters => $value, ..., TargetTags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::PolicyDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Parameters

=head1 DESCRIPTION

Specifies the configuration of a lifecycle policy.

=head1 ATTRIBUTES


=head2 Parameters => DLM_Parameters

  A set of optional parameters that can be provided by the policy.


=head2 PolicyType => Str

  This field determines the valid target resource types and actions a
policy can manage. This field defaults to EBS_SNAPSHOT_MANAGEMENT if
not present.


=head2 ResourceTypes => ArrayRef[Str|Undef]

  The resource type.


=head2 Schedules => ArrayRef[DLM_Schedule]

  The schedule of policy-defined actions.


=head2 TargetTags => ArrayRef[DLM_Tag]

  The single tag that identifies targeted resources for this policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

