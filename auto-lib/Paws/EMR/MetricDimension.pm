package Paws::EMR::MetricDimension;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::MetricDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::MetricDimension object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::MetricDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A CloudWatch dimension, which is specified using a C<Key> (known as a
C<Name> in CloudWatch), Value pair. By default, Amazon EMR uses one
dimension whose C<Key> is C<JobFlowID> and C<Value> is a variable
representing the cluster ID, which is C<${emr:cluster_id}>. This
enables the rule to bootstrap when the cluster ID becomes available,
and also enables a single automatic scaling policy to be reused for
multiple clusters and instance groups.

=head1 ATTRIBUTES


=head2 Key => Str

  The dimension name.


=head2 Value => Str

  The dimension value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

