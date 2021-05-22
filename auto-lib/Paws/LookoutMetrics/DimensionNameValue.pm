# Generated by default/object.tt
package Paws::LookoutMetrics::DimensionNameValue;
  use Moose;
  has DimensionName => (is => 'ro', isa => 'Str', required => 1);
  has DimensionValue => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::DimensionNameValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutMetrics::DimensionNameValue object:

  $service_obj->Method(Att1 => { DimensionName => $value, ..., DimensionValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutMetrics::DimensionNameValue object:

  $result = $service_obj->Method(...);
  $result->Att1->DimensionName

=head1 DESCRIPTION

A dimension name and value.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DimensionName => Str

The name of the dimension.


=head2 B<REQUIRED> DimensionValue => Str

The value of the dimension.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

