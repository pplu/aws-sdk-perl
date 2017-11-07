package Paws::EC2::ReservedInstancesModificationResult;
  use Moose;
  has ReservedInstancesId => (is => 'ro', isa => 'Str', request_name => 'reservedInstancesId', traits => ['NameInRequest']);
  has TargetConfiguration => (is => 'ro', isa => 'Paws::EC2::ReservedInstancesConfiguration', request_name => 'targetConfiguration', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReservedInstancesModificationResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReservedInstancesModificationResult object:

  $service_obj->Method(Att1 => { ReservedInstancesId => $value, ..., TargetConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReservedInstancesModificationResult object:

  $result = $service_obj->Method(...);
  $result->Att1->ReservedInstancesId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ReservedInstancesId => Str

  The ID for the Reserved Instances that were created as part of the
modification request. This field is only available when the
modification is fulfilled.


=head2 TargetConfiguration => L<Paws::EC2::ReservedInstancesConfiguration>

  The target Reserved Instances configurations supplied as part of the
modification request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
