package Paws::DLM::LifecyclePolicy;
  use Moose;
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateModified => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has PolicyDetails => (is => 'ro', isa => 'Paws::DLM::PolicyDetails');
  has PolicyId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::LifecyclePolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::LifecyclePolicy object:

  $service_obj->Method(Att1 => { DateCreated => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::LifecyclePolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->DateCreated

=head1 DESCRIPTION

Detailed information about a lifecycle policy.

=head1 ATTRIBUTES


=head2 DateCreated => Str

  The local date and time when the lifecycle policy was created.


=head2 DateModified => Str

  The local date and time when the lifecycle policy was last modified.


=head2 Description => Str

  The description of the lifecycle policy.


=head2 ExecutionRoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role used to run the
operations specified by the lifecycle policy.


=head2 PolicyDetails => L<Paws::DLM::PolicyDetails>

  The configuration of the lifecycle policy


=head2 PolicyId => Str

  The identifier of the lifecycle policy.


=head2 State => Str

  The activation state of the lifecycle policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

