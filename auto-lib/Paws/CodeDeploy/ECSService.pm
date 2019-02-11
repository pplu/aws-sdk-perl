package Paws::CodeDeploy::ECSService;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', request_name => 'clusterName', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ECSService

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::ECSService object:

  $service_obj->Method(Att1 => { ClusterName => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::ECSService object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterName

=head1 DESCRIPTION

Contains the service and cluster names used to identify an Amazon ECS
deployment's target.

=head1 ATTRIBUTES


=head2 ClusterName => Str

  The name of the cluster that the Amazon ECS service is associated with.


=head2 ServiceName => Str

  The name of the target Amazon ECS service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

