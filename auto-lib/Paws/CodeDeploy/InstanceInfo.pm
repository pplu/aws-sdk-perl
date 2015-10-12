package Paws::CodeDeploy::InstanceInfo;
  use Moose;
  has deregisterTime => (is => 'ro', isa => 'Str');
  has iamUserArn => (is => 'ro', isa => 'Str');
  has instanceArn => (is => 'ro', isa => 'Str');
  has instanceName => (is => 'ro', isa => 'Str');
  has registerTime => (is => 'ro', isa => 'Str');
  has tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::InstanceInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::InstanceInfo object:

  $service_obj->Method(Att1 => { deregisterTime => $value, ..., tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::InstanceInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->deregisterTime

=head1 ATTRIBUTES

=head2 deregisterTime => Str

  If the on-premises instance was deregistered, the time that the
on-premises instance was deregistered.

=head2 iamUserArn => Str

  The IAM user ARN associated with the on-premises instance.

=head2 instanceArn => Str

  The ARN of the on-premises instance.

=head2 instanceName => Str

  The name of the on-premises instance.

=head2 registerTime => Str

  The time that the on-premises instance was registered.

=head2 tags => ArrayRef[L<Paws::CodeDeploy::Tag>]

  The tags that are currently associated with the on-premises instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

