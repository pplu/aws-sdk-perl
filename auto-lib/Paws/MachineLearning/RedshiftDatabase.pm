package Paws::MachineLearning::RedshiftDatabase;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::RedshiftDatabase

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::RedshiftDatabase object:

  $service_obj->Method(Att1 => { ClusterIdentifier => $value, ..., DatabaseName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::RedshiftDatabase object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterIdentifier

=head1 DESCRIPTION

Describes the database details required to connect to an Amazon
Redshift database.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

  


=head2 B<REQUIRED> DatabaseName => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

