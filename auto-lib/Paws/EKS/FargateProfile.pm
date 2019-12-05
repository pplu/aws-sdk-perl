package Paws::EKS::FargateProfile;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', request_name => 'clusterName', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has FargateProfileArn => (is => 'ro', isa => 'Str', request_name => 'fargateProfileArn', traits => ['NameInRequest']);
  has FargateProfileName => (is => 'ro', isa => 'Str', request_name => 'fargateProfileName', traits => ['NameInRequest']);
  has PodExecutionRoleArn => (is => 'ro', isa => 'Str', request_name => 'podExecutionRoleArn', traits => ['NameInRequest']);
  has Selectors => (is => 'ro', isa => 'ArrayRef[Paws::EKS::FargateProfileSelector]', request_name => 'selectors', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnets', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::FargateProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::FargateProfile object:

  $service_obj->Method(Att1 => { ClusterName => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::FargateProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterName

=head1 DESCRIPTION

An object representing an AWS Fargate profile.

=head1 ATTRIBUTES


=head2 ClusterName => Str

  The name of the Amazon EKS cluster that the Fargate profile belongs to.


=head2 CreatedAt => Str

  The Unix epoch timestamp in seconds for when the Fargate profile was
created.


=head2 FargateProfileArn => Str

  The full Amazon Resource Name (ARN) of the Fargate profile.


=head2 FargateProfileName => Str

  The name of the Fargate profile.


=head2 PodExecutionRoleArn => Str

  The Amazon Resource Name (ARN) of the pod execution role to use for
pods that match the selectors in the Fargate profile. For more
information, see Pod Execution Role in the I<Amazon EKS User Guide>.


=head2 Selectors => ArrayRef[L<Paws::EKS::FargateProfileSelector>]

  The selectors to match for pods to use this Fargate profile.


=head2 Status => Str

  The current status of the Fargate profile.


=head2 Subnets => ArrayRef[Str|Undef]

  The IDs of subnets to launch Fargate pods into.


=head2 Tags => L<Paws::EKS::TagMap>

  The metadata applied to the Fargate profile to assist with
categorization and organization. Each tag consists of a key and an
optional value, both of which you define. Fargate profile tags do not
propagate to any other resources associated with the Fargate profile,
such as the pods that are scheduled with it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

