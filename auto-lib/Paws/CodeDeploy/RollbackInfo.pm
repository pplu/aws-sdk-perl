package Paws::CodeDeploy::RollbackInfo;
  use Moose;
  has RollbackDeploymentId => (is => 'ro', isa => 'Str', request_name => 'rollbackDeploymentId', traits => ['NameInRequest']);
  has RollbackMessage => (is => 'ro', isa => 'Str', request_name => 'rollbackMessage', traits => ['NameInRequest']);
  has RollbackTriggeringDeploymentId => (is => 'ro', isa => 'Str', request_name => 'rollbackTriggeringDeploymentId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::RollbackInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::RollbackInfo object:

  $service_obj->Method(Att1 => { RollbackDeploymentId => $value, ..., RollbackTriggeringDeploymentId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::RollbackInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->RollbackDeploymentId

=head1 DESCRIPTION

Information about a deployment rollback.

=head1 ATTRIBUTES


=head2 RollbackDeploymentId => Str

  The ID of the deployment rollback.


=head2 RollbackMessage => Str

  Information that describes the status of a deployment rollback (for
example, whether the deployment can't be rolled back, is in progress,
failed, or succeeded).


=head2 RollbackTriggeringDeploymentId => Str

  The deployment ID of the deployment that was underway and triggered a
rollback deployment because it failed or was stopped.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

