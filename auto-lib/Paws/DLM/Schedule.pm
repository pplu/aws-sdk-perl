package Paws::DLM::Schedule;
  use Moose;
  has CopyTags => (is => 'ro', isa => 'Bool');
  has CreateRule => (is => 'ro', isa => 'Paws::DLM::CreateRule');
  has Name => (is => 'ro', isa => 'Str');
  has RetainRule => (is => 'ro', isa => 'Paws::DLM::RetainRule');
  has TagsToAdd => (is => 'ro', isa => 'ArrayRef[Paws::DLM::Tag]');
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

  $service_obj->Method(Att1 => { CopyTags => $value, ..., TagsToAdd => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::Schedule object:

  $result = $service_obj->Method(...);
  $result->Att1->CopyTags

=head1 DESCRIPTION

Specifies a schedule.

=head1 ATTRIBUTES


=head2 CopyTags => Bool

  


=head2 CreateRule => L<Paws::DLM::CreateRule>

  The create rule.


=head2 Name => Str

  The name of the schedule.


=head2 RetainRule => L<Paws::DLM::RetainRule>

  The retain rule.


=head2 TagsToAdd => ArrayRef[L<Paws::DLM::Tag>]

  The tags to apply to policy-created resources. These user-defined tags
are in addition to the AWS-added lifecycle tags.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

