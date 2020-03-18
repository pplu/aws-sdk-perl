package Paws::EKS::FargateProfileSelector;
  use Moose;
  has Labels => (is => 'ro', isa => 'Paws::EKS::FargateProfileLabel', request_name => 'labels', traits => ['NameInRequest']);
  has Namespace => (is => 'ro', isa => 'Str', request_name => 'namespace', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::FargateProfileSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::FargateProfileSelector object:

  $service_obj->Method(Att1 => { Labels => $value, ..., Namespace => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::FargateProfileSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->Labels

=head1 DESCRIPTION

An object representing an AWS Fargate profile selector.

=head1 ATTRIBUTES


=head2 Labels => L<Paws::EKS::FargateProfileLabel>

  The Kubernetes labels that the selector should match. A pod must
contain all of the labels that are specified in the selector for it to
be considered a match.


=head2 Namespace => Str

  The Kubernetes namespace that the selector should match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

