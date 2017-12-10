package Paws::RedShift::ClusterVersion;
  use Moose;
  has ClusterParameterGroupFamily => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ClusterVersion object:

  $service_obj->Method(Att1 => { ClusterParameterGroupFamily => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ClusterVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterParameterGroupFamily

=head1 DESCRIPTION

Describes a cluster version, including the parameter group family and
description of the version.

=head1 ATTRIBUTES


=head2 ClusterParameterGroupFamily => Str

  The name of the cluster parameter group family for the cluster.


=head2 ClusterVersion => Str

  The version number used by the cluster.


=head2 Description => Str

  The description of the cluster version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

