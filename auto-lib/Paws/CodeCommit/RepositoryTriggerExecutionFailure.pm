package Paws::CodeCommit::RepositoryTriggerExecutionFailure;
  use Moose;
  has FailureMessage => (is => 'ro', isa => 'Str', request_name => 'failureMessage', traits => ['NameInRequest']);
  has Trigger => (is => 'ro', isa => 'Str', request_name => 'trigger', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::RepositoryTriggerExecutionFailure

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::RepositoryTriggerExecutionFailure object:

  $service_obj->Method(Att1 => { FailureMessage => $value, ..., Trigger => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::RepositoryTriggerExecutionFailure object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureMessage

=head1 DESCRIPTION

A trigger failed to run.

=head1 ATTRIBUTES


=head2 FailureMessage => Str

  Additional message information about the trigger that did not run.


=head2 Trigger => Str

  The name of the trigger that did not run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

