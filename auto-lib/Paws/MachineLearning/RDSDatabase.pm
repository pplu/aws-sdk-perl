package Paws::MachineLearning::RDSDatabase;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::RDSDatabase

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::RDSDatabase object:

  $service_obj->Method(Att1 => { DatabaseName => $value, ..., InstanceIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::RDSDatabase object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseName

=head1 DESCRIPTION

The database details of an Amazon RDS database.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

  


=head2 B<REQUIRED> InstanceIdentifier => Str

  The ID of an RDS DB instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

