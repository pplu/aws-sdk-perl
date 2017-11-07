package Paws::CodeDeploy::TargetInstances;
  use Moose;
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'autoScalingGroups', traits => ['NameInRequest']);
  has Ec2TagSet => (is => 'ro', isa => 'Paws::CodeDeploy::EC2TagSet', request_name => 'ec2TagSet', traits => ['NameInRequest']);
  has TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::EC2TagFilter]', request_name => 'tagFilters', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::TargetInstances

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::TargetInstances object:

  $service_obj->Method(Att1 => { AutoScalingGroups => $value, ..., TagFilters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::TargetInstances object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroups

=head1 DESCRIPTION

Information about the instances to be used in the replacement
environment in a blue/green deployment.

=head1 ATTRIBUTES


=head2 AutoScalingGroups => ArrayRef[Str|Undef]

  The names of one or more Auto Scaling groups to identify a replacement
environment for a blue/green deployment.


=head2 Ec2TagSet => L<Paws::CodeDeploy::EC2TagSet>

  Information about the groups of EC2 instance tags that an instance must
be identified by in order for it to be included in the replacement
environment for a blue/green deployment. Cannot be used in the same
call as tagFilters.


=head2 TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>]

  The tag filter key, type, and value used to identify Amazon EC2
instances in a replacement environment for a blue/green deployment.
Cannot be used in the same call as ec2TagSet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

