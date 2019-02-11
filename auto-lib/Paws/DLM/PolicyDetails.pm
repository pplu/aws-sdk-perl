package Paws::DLM::PolicyDetails;
  use Moose;
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Schedules => (is => 'ro', isa => 'ArrayRef[Paws::DLM::Schedule]');
  has TargetTags => (is => 'ro', isa => 'ArrayRef[Paws::DLM::Tag]');
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

  $service_obj->Method(Att1 => { ResourceTypes => $value, ..., TargetTags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::PolicyDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceTypes

=head1 DESCRIPTION

Specifies the configuration of a lifecycle policy.

=head1 ATTRIBUTES


=head2 ResourceTypes => ArrayRef[Str|Undef]

  The resource type.


=head2 Schedules => ArrayRef[L<Paws::DLM::Schedule>]

  The schedule of policy-defined actions.


=head2 TargetTags => ArrayRef[L<Paws::DLM::Tag>]

  The single tag that identifies targeted resources for this policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

