package Paws::CostExplorer::ResourceUtilization;
  use Moose;
  has EC2ResourceUtilization => (is => 'ro', isa => 'Paws::CostExplorer::EC2ResourceUtilization');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ResourceUtilization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::ResourceUtilization object:

  $service_obj->Method(Att1 => { EC2ResourceUtilization => $value, ..., EC2ResourceUtilization => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::ResourceUtilization object:

  $result = $service_obj->Method(...);
  $result->Att1->EC2ResourceUtilization

=head1 DESCRIPTION

Resource utilization of current resource.

=head1 ATTRIBUTES


=head2 EC2ResourceUtilization => L<Paws::CostExplorer::EC2ResourceUtilization>

  Utilization of current Amazon EC2 Instance



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

